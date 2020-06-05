# BlocHub

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Android Phone

<span style="display:flex;flex-direction:row;">
        <img src="https://github.com/madz/blochub_project/blob/master/screenshots/android_login.png" alt="screen_01" height="400" />
       
</span>
<span style="display:flex;flex-direction:row;">
        <img src="https://github.com/madz/blochub_project/blob/master/screenshots/android_register.png" alt="screen_01" height="400" />
       
</span>
<span style="display:flex;flex-direction:row;">
        <img src="https://github.com/madz/blochub_project/blob/master/screenshots/android_home.png" alt="screen_01" height="400" />
       
</span>

# Run using Dev Flavor

flutter run --target lib/main-dev.dart -d all --flavor dev

# Run using QA Flavor

flutter run --target lib/main-qa.dart -d all --flavor qa

# Run using Production Flavor

flutter run --target lib/main-prod.dart -d all --flavor prod

# Run Dev in Web

flutter run --target lib/main-dev.dart -d chrome --flavor dev

# Run Prod in Web

flutter run --target lib/main-prod.dart -d chrome --flavor prod

# Build App for iOS for Production

flutter build ios --target lib/main-prod.dart --flavor prod

# Build using Android for Production

flutter build appbundle --release --target lib\main-prod.dart --flavor prod
flutter build apk --release --target lib\main-prod.dart --flavor prod

# Build using Web for Production

flutter build web --target lib/main_dev.dart

# Code Generator

flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch --delete-conflicting-outputs

# Generate Launcher Icon

flutter pub run flutter_launcher_icons:main

#Firebase App Distribution

\*Following this tutorial https://blog.codemagic.io/deploying-flutter-app-to-firebase-app-distribution-using-fastlane/

- run the following in the ios project folder
  bundle exec fastlane ios ios_beta_app

- run the following in the android project folder
  bundle exec fastlane android android_beta_app
