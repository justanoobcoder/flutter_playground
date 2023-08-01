# Infinite Scroll App (Flutter with BLoC)

![Flutter version](https://img.shields.io/badge/flutter-v3.10.6-blue.svg)
![Dart version](https://img.shields.io/badge/dart-v3.0.6-green.svg)

The **Infinite Scroll** app is a simple Flutter application that show a list of posts which will load more when pull up using the BLoC (Business Logic Component) architecture with the `flutter_bloc` package for state management.

## Screenshots
<p float="left">
    <img src="https://raw.githubusercontent.com/justanoobcoder/flutter_playground/main/infinite_scroll/images/Screenshot_1.png" width=30% height=30%>
</p>

## Features

- Show list of facebook-like posts.
- Load more posts when pull up the list

## Prerequisites

Before running the app, make sure you have the following installed:

- Internet required (to load avatar images)
- Flutter SDK
- Dart SDK
- Android SDK or Xcode for iOS development

## Dependencies

- `bloc`, `flutter_bloc`: For state management.
- `bloc_concurrency`: For custom event transformers.
- `freezed`: Code generator for data classes.
- `intl`: For formatting data.

## Project Structure

- `lib/`: Contains the Dart source code of the app.
- `lib/common/`: Contains common things that are used globally.
- `lib/extensions/`: Contains custom extension methods.
- `lib/features/`: Contains the features of the app.
- `lib/features/../domain/models/`: Contains model classes (data class).
- `lib/features/../domain/repositories/`: Contains abstract repositories.
- `lib/features/../data/repositories/`: Contains implementations of domain repository.
- `lib/features/../blocs/`: Contains the BLoC classes for managing state.
- `lib/features/../views/`: Contains the UI components/widgets used in the app.
- `lib/main.dart`: The entry point of the application.
