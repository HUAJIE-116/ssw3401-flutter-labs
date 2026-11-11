# SSW3401 Lab 2 Understanding the Basics of Flutter GUI

A Flutter ticket-booking interface covering the assigned tutorial through 03:03:00. The Home page displays a greeting, the Book Tickets heading and a bundled image. A stateful bottom navigation bar switches between Home, Search, Tickets and Profile.

## Run

Install Flutter, then open a terminal in this folder:

```sh
flutter pub get
flutter run
```

For a browser preview: `flutter run -d chrome`.
For an Android APK: `flutter build apk --debug`.
The generated APK is in `build/app/outputs/flutter-apk/app-debug.apk`.

## Check

```sh
flutter analyze
flutter test
```

Tests cover all four navigation destinations, returning to Home, loading the local image, and the header at 320 logical pixels with 1.5x text scaling.

## Source map

- `lib/main.dart`: entry point, MaterialApp and theme.
- `lib/screens/bottom_bar.dart`: Scaffold, selected index, setState and navigation items.
- `lib/screens/home_screen.dart`: ListView, spacing, Row, Column, text and image container.
- `lib/utils/app_styles.dart`: reusable colors and TextStyle definitions.
- `assets/images/img_1.png`: original paper-plane illustration bundled locally.
- `pubspec.yaml`: dependencies and the image asset declaration.

## Tutorial scope and attribution

Tutorial: https://www.youtube.com/watch?v=DsTMhjaRQws
Author resource page: https://www.dbestech.com/tutorials/flutter-ticket-booking-app
Flutter documentation: https://docs.flutter.dev/

The assignment says to follow the tutorial until 02:56:55 and demonstrate functionality through 03:03:00. The next chapter starts at 03:03:35. Search boxes, ticket cards and hotel pages are later chapters, so Search, Tickets and Profile intentionally remain basic placeholder pages at this milestone.

The tutorial asset download returned HTTP 403 when checked. The bundled paper-plane PNG is an original replacement. Flutter Material icons replace the tutorial's external icon package; no third-party icon dependency is needed. Platform theme and icon rendering may differ from the iPhone shown in the tutorial.

This is a GUI exercise. It does not make real bookings or call a backend.
