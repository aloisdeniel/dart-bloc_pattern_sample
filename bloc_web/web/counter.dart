import 'package:bloc_shared/counter.dart';
import 'package:react/react.dart';
import 'package:react_async/async.dart';

var _Counter = registerComponent(() => _CounterComponent());

dynamic Counter({CounterBloc bloc}) {
  return _Counter({
    'bloc': bloc,
  });
}

class _CounterComponent extends Component {
  CounterBloc get bloc => this.props["bloc"];

  @override
  dynamic render() {
    return div({}, [
      div({}, 'You have pushed the button this many times:'),
      StreamBuilder<int>(
        initialData: 0,
        stream: this.bloc.counter,
        builder: (count) => h1({}, count.data.toString()),
      ),
      button({
        'onClick': (e) {
          this.bloc.increment.add(null);
        },
      }, 'Increment')
    ]);
  }
}