import 'dart:async';
import 'package:rxdart/subjects.dart';

class CounterBloc {
  CounterBloc() {
    _increment.stream.listen((task) async {
      _tasks.add(_tasks.value + 1);
    });
  }

  // Properties

  BehaviorSubject<int> _tasks = BehaviorSubject<int>(seedValue: 0);

  Stream<int> get counter => _tasks.stream;

  // Commands

  final  _increment = StreamController<void>();

  Sink<void> get increment => _increment.sink;

}