# Welcome to Met2ashara repository.

## Getting Started

To get started with this project, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/CAT-Hackathon/Mobile.git
    ```

2. **Install Flutter dependencies**:
    Make sure you have Flutter installed on your machine. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).

    Then, run the following command to install the project dependencies:
    ```sh
    flutter pub get
    ```

3. **Run the application**:
    To run the application on your connected device or emulator, use:
    ```sh
    flutter run
    ```

## Directory Structure

The directory structure of this Flutter application skeleton is as follows:

```
my_flutter_project/
├── lib/
│ ├── core/
│ │ ├── common/
│ │ ├── error/
│ │ ├── router/
│ │ ├── theme/
│ │ ├── functions/
│ │ ├── secrets/
│ │ ├── usecase/
│ │ └── utils/
│ ├── features/
│ │ ├── auth(ex)/
│ │ │ ├── data/
│ │ │ │ ├── models/
│ │ │ │ ├── repositories/
│ │ │ │ └── datasources/
│ │ │ ├── domain/
│ │ │ │ ├── entities/
│ │ │ │ ├── repositories/
│ │ │ │ └── usecases/
│ │ │ └── presentation/
│ │ │ ├── bloc/
│ │ │ ├── pages/
│ │ │ ├── widgets/
│ │ │ └── screens/
│ ├── main.dart
│ └── injection_container.dart
├── assets/
│ ├── images/
│ └── fonts/
├── test/
│ ├── core/
│ │ └── utils/
│ ├── features/
│ │ └── feature_name/
│ │ ├── data/
│ │ │ └── repositories/
│ │ ├── domain/
│ │ │ └── usecases/
│ │ └── presentation/
│ │ └── bloc/
└── pubspec.yaml
```

## Explain in depth

- The `lib` directory is where you will write your Flutter application code. It contains the following directories:
  - The `core` directory contains common classes and utilities used across the application. This includes error handling, use cases, and other utility classes.
    - The `error` directory contains classes for handling exceptions and failures.
    - The `usecases` directory contains abstract classes for defining use cases.
    - The `utils` directory contains utility classes and functions used throughout the application.
  - The `features` directory contains the different feature modules of the application. Each feature has its own subdirectory with the following structure:
    - The `data` directory contains the data layer of the feature, including models, repositories, and data sources.
    - The `domain` directory contains the domain layer of the feature, including entities, repositories, and use cases.
    - The `presentation` directory contains the presentation layer of the feature, including BLoC (Business Logic Component), pages, widgets, and screens.
  - The `main.dart` file is the entry point of your Flutter application.
  - The `injection_container.dart` file is used for dependency injection.

## Dependencies

Below is a list of default dependencies used in this project:
    
```yaml
  carousel_slider: ^4.2.1
  cupertino_icons: ^1.0.6
  dotted_border: ^2.1.0
  fancy_shimmer_image: ^2.0.3
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.6
  flutter_launcher_icons: ^0.13.1
  flutter_localizations:
    sdk: flutter
  flutter_native_splash: ^2.4.0
  flutter_screenutil: ^5.9.0
  flutter_svg: ^2.0.10+1
  fpdart: ^1.1.0
  get_it: ^7.7.0
  go_router: ^14.1.0
  hive: ^4.0.0-dev.2
  image_picker: ^1.1.1
  internet_connection_checker_plus: ^2.3.0
  intl: ^0.19.0
  isar_flutter_libs: ^4.0.0-dev.13
  liquid_swipe: ^3.1.0
  path_provider: ^2.1.0
  curved_navigation_bar: ^1.0.6
  photo_view: ^0.15.0
  quickalert: ^1.1.0
  shared_preferences: ^2.2.3
  shimmer: ^3.0.0
  smooth_page_indicator: ^1.1.0
  toastification: ^2.0.0
  uuid: ^4.4.0

```

## Deployment

To deploy this application, follow these steps:

1. **Build the application**:
    For Android:
    ```sh
    flutter build apk
    ```
    For iOS:
    ```sh
    flutter build ios
    ```

2. **Distribute the application**:
    - For Android, you can distribute the APK file found in the `build/app/outputs/flutter-apk` directory.
    - For iOS, you can distribute the app through TestFlight or the App Store.

## Contributing

We welcome contributions to this project! To contribute, follow these steps:

1. **Fork the repository**:
    Click the "Fork" button at the top right of this page.

2. **Clone your fork**:
    ```sh
    https://github.com/CAT-Hackathon/Mobile.git
    ```

3. **Create a branch**:
    ```sh
    git checkout -b feature-branch
    ```

4. **Make your changes** and **commit them**:
    ```sh
    git add .
    git commit -m "Description of changes"
    ```

5. **Push to the branch**:
    ```sh
    git push origin feature-branch
    ```

6. **Create a Pull Request**:
    Go to the original repository on GitHub and click "New Pull Request" to start the process.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
