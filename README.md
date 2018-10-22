# BLoC Sample *(Flutter + React)*

This basic project demonstrates how to share your blocs between a mobile [Flutter](https://flutter.io) app and a web [React](https://github.com/cleandart/react-dart) app.

The example shows how to architecture the Flutter counter sample around the BLoC pattern, and how to share the logic with your webapp.

#### Shared

The sample bloc is in the [bloc_shared project](bloc_shared/lib/counter.dart).

A `counter` `Stream<int>` is exposed and sends an update each time the counter is updated.

An `increment` `Sink<void>` represents the increment command to update the current count.

#### Flutter

A `Counter` widget is located in the [bloc_mobile project](bloc_mobile/lib/counter.dart).

A `StreamBuilder` subscribes to the bloc `counter` stream to update the displayed count.

#### React

A `Counter` component is located in the [bloc_web project](bloc_web/web/counter.dart).

A `StreamBuilder` subscribes to the bloc `counter` stream to update the displayed count.