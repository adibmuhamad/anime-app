# ANIME APP

A simple application to get info about anime using Flutter!

Ilustration [Dribbble](https://dribbble.com/shots/15766352-ANIME-APP)

## Features

1. Get airing and upcoming anime
2. Slider page transition

## Supported Device

- Android device with minimum API 19 **(KitKat)**

## Build App requirements

- Recommended using Flutter 2.2.1 in this [Stable channel](https://github.com/flutter/flutter.git)
- Using Dart v2.13.1

## Instructions

1. Clone from this repository
   - Copy repository url
   - Open your fav code editor _(Recommended using Android Studio)_
   - New -> Project from Version Control..
   - Paste the url, click OK
2. Run "flutter pub get" in the project directory or click the highlighted instruction in Android Studio
3. Prepare the Android Virtual Device or real device
4. Run main.dart

## Code Design & Structure

This project directory consist of 5 directories:
1. **Model**: consists models or data structure that being used in the project
   - `movie`: provide the model to parse JSON movie
2. **Pages**: consists page that shown to the user
   - `credit_page`: provide the credit screen for the components and declare the basic functional
   - `detail_page`: provide the detail cases screen for the components and declare the basic functional
   - `error_page`:  provide the error screen for the components and declare the basic functional
   - `home_page`:  provide the main screen for the components and declare the basic functional
   - `splash_page`:  provide the splash screen for the components and declare the basic functional
3. **Providers**: consists class to consume API
   - `movie_provider`: provide the class to consume [Jikan API](https://jikan.moe/)
4. **Utils**: consists tools that support the component's function
   - `underedlist_util`: function to support bullet numbering test
5. **Widgets**: consists widgets that build the screen and do it's function
   - `bottom_button`: widget that provide custom bottom button
   - `build_transform`: widget that provide function to add animation, transiton, zoom/fade, and etc
   - `movie_card`: widget that provide card for movie card

## API

API that use in this project : [Jikan API](https://jikan.moe/)

## Credit

- Kindpng
- Flaticon
