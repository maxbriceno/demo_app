# DemoApp – Flutter Full-Stack Mini Projec

## Overview

DemoApp is a modular and scalable Flutter application, designed to demonstrate key concepts relevant for a Middle+/Senior Flutter interview:

- State management with Cubit/Bloc
- Web/Mobile-friendly navigation with goRouter
- Data serialization using json_serializable
- Local persistence with shared_preferences
- Firebase initialization for cloud services
- Modular, testable structure (Clean Architecture)
- Unit Testing of business logic

The app is not focused on complex UI, but rather on technical and architectural skills.

## Project Structure

```
lib/
 ├─ main.dart                # Entry point + Router + BlocProvider
 ├─ models/
 │   └─ user.dart            # Data model with json_serializable
 ├─ cubit/
 │   └─ counter_cubit.dart   # State management
 ├─ services/
 │   └─ local_storage.dart   # Local storage with SharedPreferences
 └─ screens/
     ├─ home_screen.dart
     └─ about_screen.dart
test/
 └─ counter_test.dart         # Basic unit test
```

## Features

| Feature                     | Description                                                       | Level   |
| --------------------------- | ----------------------------------------------------------------- | ------- |
| **Bloc/Cubit**              | Reactive state management for a counter                           | Middle+ |
| **goRouter**                | Navigation between Home and About screens (Web/Mobile)            | Middle+ |
| **json\_serializable**      | Object serialization (User model)                                 | Middle+ |
| **SharedPreferences**       | Simple local persistence                                          | Middle+ |
| **Firebase Initialization** | Firebase setup (Auth, Firestore ready to use)                     | Middle+ |
| **Unit Test**               | CounterCubit increment test                                       | Middle+ |
| **Modularity**              | Logical separation of concerns (models, services, cubit, screens) | Senior  |
| **Clean Architecture**      | Testable, scalable, easily extendable design                      | Senior  |


## Getting Started

### Prerequisites

- Flutter 3.22+
- Dart >=3.0
- Firebase account (optional for Cloud testing)
- VSCode or Android Studio

### Installation

1. Clone the repository:
```bash
git clone https://github.com/username/demo_app.git
cd demo_app
```

2. Install dependecies:
```bash
flutter pub get
```

3. Generate json_serializable files - build_runner must be included in project depenendecies in the pubspec.yml file:
```bash
flutter pub run build_runner build
```

4. Run the app:
```bash
flutter run
```

5. For Firebase, add google-services.json (Android) and GoogleService-Info.plist (iOS).

### Testing

Basic unit test for **CounterCubit**:
```bash
flutter test
```

Expected output:
```bash
CounterCubit increments state: All tests passed!
```

### Tech Stack
- **Flutter 3.22**

- **Dart null-safety**

- **Bloc/Cubit (flutter_bloc)**

- **goRouter (navigation)**

- **json_serializable (model generation)**

- **shared_preferences**

- **Firebase core**

- **flutter_test (unit testing)**