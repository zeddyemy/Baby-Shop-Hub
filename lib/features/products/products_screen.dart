import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/app_theme.dart';
import '../../core/routing/app_router.dart';
import '../../shared/mock/mock_products.dart';
import '../../shared/models/product.dart';
import '../../shared/widgets/search_bar_field.dart';
import '../../shared/widgets/category_chip.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/providers/cart_provider.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  String _selectedCategory = 'All';
  bool _isGridView = true;
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final filtered = _getFilteredProducts();

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => _isGridView = !_isGridView),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            child: Column(
              children: [
                SearchBarField(
                  controller: _searchController,
                  onChanged: (value) => setState(() {}),
                  onFilter: _showFilterBottomSheet,
                ),
                const SizedBox(height: AppConstants.paddingMedium),
                _buildCategoryChips(),
              ],
            ),
          ),
          Expanded(
            child: _isGridView
                ? _buildGridView(filtered)
                : _buildListView(filtered),
          ),
        ],
      ),
    );
  }

  List<Product> _getFilteredProducts() {
    var products = _selectedCategory == 'All'
        ? kMockProducts
        : kMockProducts.where((p) => p.category == _selectedCategory).toList();

    if (_searchController.text.isNotEmpty) {
      products = products
          .where(
            (p) => p.name.toLowerCase().contains(
              _searchController.text.toLowerCase(),
            ),
          )
          .toList();
    }

    return products;
  }

  Widget _buildCategoryChips() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: kCategories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final category = kCategories[index];
          return CategoryChip(
            label: category,
            selected: category == _selectedCategory,
            onTap: () => setState(() => _selectedCategory = category),
          );
        },
      ),
    );
  }

  Widget _buildGridView(List<Product> products) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.99,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: () => _navigateToProductDetails(products[index]),
            onAddToCart: () => _addToCart(products[index]),
          );
        },
      ),
    );
  }

  Widget _buildListView(List<Product> products) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          product: products[index],
          listMode: true,
          onTap: () => _navigateToProductDetails(products[index]),
          onAddToCart: () => _addToCart(products[index]),
        );
      },
    );
  }

  void _navigateToProductDetails(Product product) {
    Navigator.pushNamed(context, AppRouter.productDetails, arguments: product);
  }

  void _addToCart(Product product) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    cartProvider.addItem(product);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} added to cart!'),
        backgroundColor: AppTheme.primaryGreen,
        action: SnackBarAction(
          label: 'View Cart',
          textColor: Colors.white,
          onPressed: () => Navigator.pushNamed(context, '/cart'),
        ),
      ),
    );
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Filters',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Price Range'),
            RangeSlider(
              values: const RangeValues(1000, 20000),
              min: 0,
              max: 25000,
              divisions: 25,
              labels: const RangeLabels('₦1,000', '₦20,000'),
              onChanged: (values) {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryGreen,
                foregroundColor: Colors.white,
              ),
              child: const Text('Apply Filters'),
            ),
          ],
        ),
      ),
    );
  }
}
