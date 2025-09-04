#!/bin/bash

# Delete pubspec.lock file if it exists
if [ -f "pubspec.lock" ]; then
    echo "Delete pubspec.lock file..."
    rm pubspec.lock
fi

flutter clean; 
flutter pub get; 
cd ios; 
pod deintegrate; 
pod install; 
cd ..; 
flutter pub get;