# Baby Shop Hub

A modern, feature-rich mobile application for baby products shopping, built with Flutter.

## About

BabyShopHub is a comprehensive e-commerce mobile application designed to provide parents with easy access to quality baby products. The app features a clean, intuitive interface with modern design principles and follows industry best practices.

## Features

### ✅ Core E-commerce Features (Complete)
- **🏠 Home Screen**: Personalized welcome with categories and featured products
- **📱 Product Catalog**: Grid/list view toggle with search and filtering
- **🛒 Shopping Cart**: Full cart management with quantity controls
- **📋 Product Details**: Comprehensive product information with add to cart
- **💳 Checkout Flow**: Complete order processing with validation
- **👤 User Profile**: Stats dashboard and comprehensive settings menu
- **🔍 Smart Search**: Real-time product search across all categories
- **📊 Category Filtering**: Horizontal scrolling category chips

### ✅ Technical Features (Complete)
- **🔄 Global State Management**: Provider-based cart state across all screens
- **🧭 Advanced Navigation**: Seamless routing with named routes and deep linking
- **🎨 Material Design 3**: Complete UI implementation with brand consistency
- **📱 Responsive Design**: Optimized for all screen sizes and orientations
- **⚡ Performance Optimized**: Efficient rendering and state management
- **🛡️ Error Handling**: Comprehensive validation and user feedback
- **🔧 Reusable Components**: Modular widget library for maintainability

### ✅ User Experience Features (Complete)
- **✨ Add to Cart from Listings**: Direct cart addition without viewing details
- **📝 Smart Snackbars**: Contextual feedback with action buttons
- **🎯 Empty States**: Beautiful empty cart and search states
- **🔄 Real-time Updates**: Live cart updates across all screens
- **💫 Smooth Animations**: Professional transitions and loading states
- **🎨 Consistent Design**: Unified visual language throughout the app

### 🔄 Authentication & Foundation (Complete)
- **Splash Screen**: Beautiful animated welcome screen with app branding
- **Authentication System**: Complete login and signup functionality
- **Form Validation**: Comprehensive input validation for all forms
- **Social Login**: Ready for Google and Facebook authentication integration
- **Modern UI/UX**: Clean, responsive design following Material Design 3

## Project Structure ✅ (Complete Implementation)

```
lib/
├── core/                    # Core application functionality ✅
│   ├── constants/          # App-wide constants and configurations ✅
│   ├── routing/            # Navigation and routing logic ✅
│   └── theme/              # App theme and styling ✅
├── features/               # Feature-based modules ✅
│   ├── auth/              # Authentication screens (login/signup) ✅
│   ├── splash/            # Splash screen ✅
│   ├── home/              # Home screen with categories & products ✅
│   ├── products/          # Product catalog & details ✅
│   ├── cart/              # Shopping cart & checkout ✅
│   └── profile/           # User profile & settings ✅
├── shared/                 # Reusable components and utilities ✅
│   ├── widgets/           # Common UI components ✅
│   ├── models/            # Data models (Product, CartItem) ✅
│   └── providers/         # State providers (CartProvider) ✅
└── main.dart              # Application entry point ✅
```

## Design System

### Colors
- **Primary Green**: `#129575` - Main brand color
- **Secondary Orange**: `#F57C00` - Accent color for CTAs
- **Background**: `#FAFAFA` - Light background
- **Text Primary**: `#212121` - Main text color
- **Text Secondary**: `#757575` - Secondary text color

### Typography
- **Headline Large**: 32px, Bold
- **Headline Medium**: 24px, Semi-bold
- **Body Large**: 16px, Regular
- **Body Medium**: 14px, Regular
- **Label Large**: 16px, Semi-bold

### Components
- Rounded corners (12px radius)
- Consistent spacing (8px, 16px, 24px, 32px)
- Material Design 3 compliance
- Smooth animations and transitions

## Getting Started

### Prerequisites
- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/zeddyemy/Baby-Shop-Hub.git
   cd Baby-Shop-Hub
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Development Setup

1. **Open the project** in your preferred IDE
2. **Ensure Flutter SDK** is properly configured
3. **Run `flutter doctor`** to verify setup
4. **Start developing!** 

## Screenshots

### Splash Screen
- Animated logo and branding
- 3-second timer before navigation
- Loading indicator

### Login Screen
- Email and password fields
- Form validation
- Social login options
- "Forgot Password" functionality

### Signup Screen
- Complete registration form
- Terms and conditions checkbox
- Password confirmation
- Social signup options

### Home Screen
- Personalized welcome message
- Horizontal scrolling categories
- Featured products carousel
- Search bar with filter button
- Add to cart from product cards
- Bottom navigation integration

### Products Screen
- Grid/List view toggle in app bar
- Real-time search functionality
- Category filtering with chips
- Product details navigation
- Add to cart from both grid and list views
- Filter bottom sheet (placeholder)

### Product Details Screen
- Hero image with circular design
- Comprehensive product information
- Tabbed interface (Description, Reviews, Seller Info)
- Quantity selector for cart
- Add to cart with immediate feedback
- Related products carousel

### Shopping Cart Screen
- Empty cart state with call-to-action
- Cart items with quantity controls
- Real-time price calculations
- Remove items with confirmation
- Order summary with shipping costs
- Checkout button with total amount

### Checkout Screen
- Complete order summary
- Delivery address form with validation
- Payment method selection
- Order notes (optional)
- Processing animation
- Success confirmation with order number

### Profile Screen
- Curved header with brand colors
- User statistics cards (Orders, Wishlist, Reviews)
- Comprehensive menu system
- Settings and preferences
- Logout with confirmation dialog

## Technology Stack ✅ (Complete Implementation)

- **Framework**: Flutter 3.8.1+
- **Language**: Dart
- **State Management**: Provider ✅ (Fully implemented with CartProvider)
- **Navigation**: Flutter Navigation 2.0 ✅ (Complete routing system)
- **UI Components**: Custom Material Design 3 ✅ (Comprehensive widget library)
- **Architecture**: Clean Architecture ✅ (Feature-based modular structure)
- **Dependencies**: See `pubspec.yaml`

## Key Dependencies

```yaml
dependencies:
  flutter: sdk: flutter
  provider: ^6.1.1          # State management
  go_router: ^14.2.7        # Navigation
  cached_network_image: ^3.3.1  # Image caching
  flutter_rating_bar: ^4.0.1    # Rating components
  intl: ^0.19.0             # Internationalization
```

## Development Guidelines

### Code Style
- Follow Flutter/Dart conventions
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused

### Widget Structure
- Use `StatelessWidget` when possible
- Implement proper state management
- Dispose controllers in `dispose()` method
- Handle widget lifecycle properly

### File Naming
- Use snake_case for file names
- Prefix private classes with underscore
- Group related functionality in folders

### Testing
- Write unit tests for business logic
- Test widget interactions
- Maintain good test coverage

## Common Commands

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run

# Build for release
flutter build apk

# Run tests
flutter test

# Analyze code
flutter analyze

# Format code
dart format .

# Clean build
flutter clean
```

## File Organization

### Core Files
- `main.dart` - App entry point with Provider setup
- `core/theme/app_theme.dart` - Complete Material Design 3 theme
- `core/constants/app_constants.dart` - App-wide constants and spacing
- `core/routing/app_router.dart` - Complete navigation system

### Models & Providers
- `shared/models/product.dart` - Product data model
- `shared/providers/cart_provider.dart` - Global cart state management

### Widgets (Reusable Components)
- `shared/widgets/custom_button.dart` - Reusable button component
- `shared/widgets/custom_text_field.dart` - Text input component
- `shared/widgets/social_login_button.dart` - Social authentication buttons
- `shared/widgets/search_bar_field.dart` - Search with filter functionality
- `shared/widgets/category_chip.dart` - Category selection chips
- `shared/widgets/product_card.dart` - Product display with dual modes

### Feature Screens
- `features/splash/splash_screen.dart` - Animated welcome screen
- `features/auth/login_screen.dart` - User authentication
- `features/auth/signup_screen.dart` - User registration
- `features/home/home_screen.dart` - Home with categories and products
- `features/products/products_screen.dart` - Product catalog with search
- `features/products/product_details_screen.dart` - Comprehensive product details
- `features/cart/cart_screen.dart` - Shopping cart management
- `features/cart/checkout_screen.dart` - Complete checkout flow
- `features/profile/profile_screen.dart` - User profile and settings

## Development Roadmap ✅ (Updated)

### Phase 1: Foundation ✅ COMPLETE
- [x] Project setup and structure
- [x] Theme system with Material Design 3
- [x] Authentication UI (Login/Signup)
- [x] Navigation system with routing

### Phase 2: Core E-commerce Features ✅ COMPLETE
- [x] 🏠 Home screen with categories and featured products
- [x] 📱 Product catalog with grid/list view toggle
- [x] 🔍 Smart search and category filtering
- [x] 📋 Product details page with comprehensive information
- [x] 🛒 Shopping cart with full functionality
- [x] 💳 Complete checkout flow with validation
- [x] 👤 User profile with stats and settings
- [x] ➕ Add to cart from product listings
- [x] 🔄 Global state management with Provider
- [x] 🧭 Advanced navigation system

### Phase 3: Advanced Features & Backend Integration (Next)
- [ ] 🔐 Firebase Authentication integration
- [ ] 🗄️ Firebase Firestore for data persistence
- [ ] 💳 Payment gateway integration (Flutterwave/Stripe)
- [ ] 📱 Push notifications
- [ ] 📊 Analytics and user behavior tracking
- [ ] 🔄 Real-time order tracking
- [ ] 💾 Offline data synchronization
- [ ] 🎨 Advanced animations and micro-interactions

## Contributing

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Commit your changes** (`git commit -m 'Add amazing feature'`)
4. **Push to the branch** (`git push origin feature/amazing-feature`)
5. **Open a Pull Request**

### Commit Message Convention
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation update
- `style:` Code formatting
- `refactor:` Code refactoring
- `test:` Adding tests

## Troubleshooting

### Common Issues

1. **Dependencies not found**
   ```bash
   flutter clean
   flutter pub get
   ```

2. **Build errors**
   ```bash
   flutter analyze
   flutter doctor
   ```

3. **Hot reload not working**
   - Save all files
   - Check for syntax errors
   - Restart the app if needed

## Support

- **Team Members**: Gideon Uduaghan, Emmanuel Olowu, Azih Emmanuel, Adedokun Taofeek and Obi Emmanuel
- **Repository**: [Baby-Shop-Hub](https://github.com/zeddyemy/Baby-Shop-Hub)
- **Issues**: Use GitHub Issues for bug reports and feature requests

## License

This project is proprietary and confidential. All rights reserved.

---


*Built by the BabyShopHub Team at Aptech, Nigeria*
