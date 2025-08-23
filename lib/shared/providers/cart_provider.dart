import 'package:flutter/foundation.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get totalPrice => product.price * quantity;

  CartItem copyWith({Product? product, int? quantity}) {
    return CartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toJson() {
    return {'productId': product.id, 'quantity': quantity};
  }

  factory CartItem.fromJson(Map<String, dynamic> json, Product product) {
    return CartItem(product: product, quantity: json['quantity'] as int);
  }
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  int get itemCount => _items.length;

  int get totalQuantity => _items.fold(0, (sum, item) => sum + item.quantity);

  double get subtotal => _items.fold(0, (sum, item) => sum + item.totalPrice);

  double get shipping =>
      subtotal > 10000 ? 0 : 1500.0; // Free shipping over ₦10,000

  double get total => subtotal + shipping;

  bool get isEmpty => _items.isEmpty;

  // Add item to cart
  void addItem(Product product, {int quantity = 1}) {
    final existingIndex = _items.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (existingIndex >= 0) {
      // Update quantity if item already exists
      final newQuantity = _items[existingIndex].quantity + quantity;
      _items[existingIndex] = _items[existingIndex].copyWith(
        quantity: newQuantity,
      );
    } else {
      // Add new item
      _items.add(CartItem(product: product, quantity: quantity));
    }

    notifyListeners();
  }

  // Remove item from cart
  void removeItem(String productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  // Update item quantity
  void updateQuantity(String productId, int newQuantity) {
    if (newQuantity <= 0) {
      removeItem(productId);
      return;
    }

    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      _items[index] = _items[index].copyWith(quantity: newQuantity);
      notifyListeners();
    }
  }

  // Increment quantity
  void incrementQuantity(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      final newQuantity = _items[index].quantity + 1;
      _items[index] = _items[index].copyWith(quantity: newQuantity);
      notifyListeners();
    }
  }

  // Decrement quantity
  void decrementQuantity(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      final newQuantity = _items[index].quantity - 1;
      if (newQuantity <= 0) {
        removeItem(productId);
      } else {
        _items[index] = _items[index].copyWith(quantity: newQuantity);
        notifyListeners();
      }
    }
  }

  // Check if product is in cart
  bool isInCart(String productId) {
    return _items.any((item) => item.product.id == productId);
  }

  // Get quantity of product in cart
  int getQuantity(String productId) {
    final item = _items.firstWhere(
      (item) => item.product.id == productId,
      orElse: () => CartItem(
        product: Product(
          id: '',
          name: '',
          description: '',
          price: 0,
          rating: 0,
          ratingCount: 0,
          imageUrl: '',
          category: '',
          sellerName: '',
          eta: const Duration(minutes: 0),
        ),
        quantity: 0,
      ),
    );
    return item.quantity;
  }

  // Clear cart
  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  // Get cart item by product id
  CartItem? getCartItem(String productId) {
    try {
      return _items.firstWhere((item) => item.product.id == productId);
    } catch (e) {
      return null;
    }
  }

  // Save cart to persistent storage (placeholder for future implementation)
  Future<void> saveCart() async {
    // TODO: Implement persistent storage with SharedPreferences or Hive
    // For now, this is a placeholder
    debugPrint('Cart saved: $_items');
  }

  // Load cart from persistent storage (placeholder for future implementation)
  Future<void> loadCart() async {
    // TODO: Implement loading from persistent storage
    // For now, this is a placeholder
    debugPrint('Cart loaded');
  }
}
