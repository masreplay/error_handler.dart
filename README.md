Welcome to [Perfrect Error Handler](https://pub.dev/packages/perfect_error_handler), error handler with type-safety//streaming/freeze-functionality/

# Motivation
"try and catch" are hard to use also then((){}).catch((){}) make code hard to read and modify



- define a constructor + the properties
- override `toString`, `operator ==`, `hashCode`
- implement a `copyWith` method to clone the object
- handling de/serialization

Implementing all of this can take hundreds of lines, which are error-prone
and affect the readability of your model significantly.

Freezed tries to fix that by implementing most of this for you, allowing you
to focus on the definition of your model.

| Before                          | After                          |
| ------------------------------- | ------------------------------ |
| ![before](readme/before.png) | ![before](readme/after.png) |
