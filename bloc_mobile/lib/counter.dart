import 'package:bloc_shared/counter.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  Counter(this.bloc);

  final CounterBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: this.bloc.counter, 
              builder: (c,count) => Text(
              count.data.toString(),
              style: Theme.of(context).textTheme.display1,
            )),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          this.bloc.increment.add(null);
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}