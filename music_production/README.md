# Music Production App

A Flutter application for music production and management, built with Firebase integration.

## Project Structure

```
lib/
├── main.dart                 # Application entry point
├── firebase_options.dart     # Firebase configuration
├── models/                   # Data models
├── providers/               # State management 
│   ├── navigation_provider.dart  #Main application state
│   └── service_provider.dart
├── screens/                 # Application screens
│   ├── bottom_nav_screen.dart
│   ├── home_screen.dart
│   ├── trackbox_screen.dart
│   ├── projects_screen.dart
│   └── news_screen.dart
└── widgets/                 # Reusable UI components
    └── service_tile.dart

assets/                      # Static assets (images, fonts, etc.)
```

## Key Features

- **Bottom Navigation**: Easy navigation between different sections of the app
- **Home Screen**: Main dashboard with music production features
- **Trackbox**: Track management and organization
- **Projects**: Project management and organization
- **News**: Latest updates and news in music production

## State Management

The application uses Provider pattern for state management with three main providers:


1. **NavigationProvider**: Handles navigation state
   - Screen navigation
   - Bottom navigation bar state

2. **ServiceProvider**: Manages service-related state
   - Service configurations
   - Service states

## Firebase Integration

The app is integrated with Firebase for:
- Data storage
- Real-time updates

## Getting Started

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Configure Firebase:
   - Add your Firebase configuration in `firebase_options.dart`
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- Flutter SDK
- Firebase Core
- Provider (for state management)
- Other dependencies listed in `pubspec.yaml`

## Development

The project follows a clean architecture pattern with:
- Clear separation of concerns
- Modular components
- Reusable widgets
- State management using Provider

## License

This project is licensed under the MIT License - see the LICENSE file for details.
