Welcome to [Perfect Error Handler](https://pub.dev/packages/error_handler), error handler with type-safety/streaming/freezed-functionality/cover-all-dio-exceptions

# Motivation
`try{}catch(e){}` are hard to use also `then((){}).catch((){})` make code hard to read and modify



- handle all state init/loading/data/error easily
- stream state changes 
- logger for states
- built above freezed
- function tear-off if possible
- built on Dio so it covers all types of exceptions also you can add your own!

Same as mentioned in [Freezed](https://pub.dev/packages/freezed)
Implementing all of this can take hundreds of lines
and it's hard to make a specific error handler in each project

**Perfect Error Handler** is implemented so all you have to do is start sending requests!

| Before                          | After                          |
| ------------------------------- | ------------------------------ |
| ![before](readme/before.png) | ![before](readme/after.png) |


How to use
Install

For a Flutter project:
```cmd
flutter pub add error_handler
flutter pub add dio
```

For a Dart project:
```cmd
flutter pub add error_handler
flutter pub add dio
```


