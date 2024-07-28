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
|-- assets
|-- |-- icons
|-- |-- images
|-- |-- lang
|-- |-- |-- ar.json
|-- |-- |-- en.json
|-- lib
|-- |-- core
|-- |-- |-- configs
|-- |-- |-- |-- extensions
|-- |-- |-- |-- locale
|-- |-- |-- |-- router
|-- |-- |-- |-- theme
|-- |-- |-- data
|-- |-- |-- |-- dio
|-- |-- |-- |-- error
|-- |-- |-- |-- local
|-- |-- |-- |-- remote
|-- |-- |-- models
|-- |-- |-- resources
|-- |-- |-- utils
|-- |-- features
|-- |-- |-- feature_1
|-- |-- |-- |-- models
|-- |-- |-- |-- repository
|-- |-- |-- |-- view
|-- |-- |-- |-- |-- screens
|-- |-- |-- |-- |-- widgets
|-- |-- |-- |-- view_models
|-- README.md
```

## Dependencies

Below is a list of default dependencies used in this project:
```yaml
dependencies:
  bot_toast:
  cached_network_image:
  connectivity_plus:
  country_code_picker:
  cupertino_icons:
  dio:
  dartz:
  easy_localization:
  equatable:
  firebase_core: ^2.32.0
  firebase_messaging: ^14.9.4
  flutter:
    sdk: flutter
  flutter_bloc:
  flutter_local_notifications: ^17.1.2
  flutter_screenutil:
  flutter_secure_storage: 9.0.0
  flutter_svg:
  get_it:
  go_router:
  google_fonts:
  injectable:
  logger:
  rxdart:
  shared_preferences:
  shimmer:
  url_launcher:
  lottie: ^2.7.0
  pinput: ^3.0.1
  local_auth: ^2.1.8
  file_picker: ^6.1.1
  percent_indicator: ^4.2.3
  intl: 
  google_maps_flutter: ^2.5.3
  geolocator:
  permission_handler: ^11.2.0
  image_picker:
  image_cropper:
  device_info_plus: ^9.1.1
  pin_code_fields: ^8.0.1
  flutter_animate: ^4.5.0
  share_plus: ^7.2.2
  infinite_scroll_pagination: ^4.0.0
  readmore: ^3.0.0
  carousel_slider: ^4.2.1  
  sticky_headers: ^0.3.0+2
  animated_flip_counter: ^0.3.4
  flutter_widget_from_html: ^0.14.11
  rename: ^3.0.2

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
