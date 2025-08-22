# Baby Shop Hub

A modern, feature-rich mobile application for baby products shopping, built with Flutter.

## About

BabyShopHub is a comprehensive e-commerce mobile application designed to provide parents with easy access to quality baby products. The app features a clean, intuitive interface with modern design principles and follows industry best practices.

## Features

### Current Features
- **Splash Screen**: Beautiful animated welcome screen with app branding
- **Authentication System**: Complete login and signup functionality
- **Modern UI/UX**: Clean, responsive design following Material Design 3
- **Form Validation**: Comprehensive input validation for all forms
- **Social Login**: Ready for Google and Facebook authentication integration
- **Responsive Design**: Optimized for various screen sizes

### Planned Features
- Product catalog and search
- Shopping cart and checkout
- User profile management
- Order tracking
- Push notifications
- Payment integration

## Project Structure

```
lib/
├── core/                    # Core application functionality
│   ├── constants/          # App-wide constants and configurations
│   ├── routing/            # Navigation and routing logic
│   └── theme/              # App theme and styling
├── features/               # Feature-based modules
│   ├── auth/              # Authentication screens (login/signup)
│   └── splash/            # Splash screen
├── shared/                 # Reusable components and utilities
│   └── widgets/           # Common UI components
└── main.dart              # Application entry point
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

## Technology Stack

- **Framework**: Flutter 3.8.1+
- **Language**: Dart
- **State Management**: Provider (planned)
- **Navigation**: Flutter Navigation 2.0
- **UI Components**: Custom Material Design 3
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
- `main.dart` - App entry point and configuration
- `app_theme.dart` - Theme configuration
- `app_constants.dart` - App-wide constants
- `app_router.dart` - Navigation setup

### Widgets
- `custom_button.dart` - Reusable button component
- `custom_text_field.dart` - Text input component
- `social_login_button.dart` - Social authentication buttons

### Screens
- `splash_screen.dart` - Welcome screen
- `login_screen.dart` - User authentication
- `signup_screen.dart` - User registration

## Development Roadmap

### Phase 1: Foundation ✅
- [x] Project setup and structure
- [x] Theme system
- [x] Authentication UI
- [x] Navigation system

### Phase 2: Core Features (Next)
- [ ] Home screen
- [ ] Product catalog
- [ ] Shopping cart
- [ ] User profile

### Phase 3: Advanced Features
- [ ] Payment integration
- [ ] Push notifications
- [ ] Analytics
- [ ] Performance optimization

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

---

*Built by the BabyShopHub Team at Aptech, Nigeria*
