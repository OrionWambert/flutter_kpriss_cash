# Finance Mobile App

A Flutter mobile finance management application built with Clean Architecture and BLoC state management.

## ✨ Features

- **Finance Dashboard**: Balance overview, currencies, and recent transactions
- **Transactions**: Detailed transaction list with search functionality
- **Notifications**: Notification center
- **Onboarding**: Initial setup screen
- **Balance Privacy**: Hide/show balance feature
- **Multi-currency**: Support for multiple currencies (USD, EUR, GBP)
- **Transaction Search**: Advanced search with suggestions

## 🏗️ Architecture

Clean Architecture with layer separation:

- **Domain Layer**: Entities and repository interfaces (pure business logic)
- **Data Layer**: Repository implementations and data sources
- **State Layer**: BLoC/Cubit for state management
- **Presentation Layer**: Flutter widgets, pages, and UI components

## 🛠️ Tech Stack

- **Flutter** with **Dart SDK ^3.10.4**
- **State Management**: `flutter_bloc` ^8.1.3
- **Navigation**: `go_router` ^17.0.1
- **Dependency Injection**: `get_it` ^7.6.4
- **Code Generation**: `freezed` ^3.2.4, `build_runner` ^2.6.0
- **UI**: `google_fonts`, `delayed_display`, `responsive_framework`
- **i18n**: `easy_localization` (FR, EN)

## 📦 Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd finance_mobile_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate code**

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 💻 Usage

### Run the app

```bash
flutter run
```

### Generate code (after Freezed changes)

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Widgetbook (UI component documentation)

```bash
flutter run -d chrome lib/storybook/widgetbook.dart
```

## 📁 Project Structure

```
lib/
├── core/                    # Core layer (errors, network, use cases)
├── features/                # Business features
│   ├── transaction/        # Transactions feature
│   ├── notification/       # Notifications feature
│   └── onboarding/         # Onboarding feature
├── ui/                      # Presentation layer
│   ├── pages/              # App pages
│   ├── core_components/    # Reusable components
│   └── styles/             # Themes and typography
├── router/                  # Navigation configuration
└── dependency_injection.dart  # GetIt setup
```

## 🌍 Internationalization

Supports multiple languages via `easy_localization`:

- **French (FR)**: Default language
- **English (EN)**: Secondary language

Translation files are in `assets/translations/`.

## 📝 Useful Commands

```bash
# Analyze code
dart analyze

# Format code
dart format .

# Run tests
flutter test

# Check outdated dependencies
flutter pub outdated

# Clean project
flutter clean && flutter pub get
```

## 📄 License

This project is private and should not be published to pub.dev.

---

**Note**: This project uses Clean Architecture with BLoC for optimal maintainability and testability.
