import 'dart:html';
import 'package:bloc_shared/counter.dart';
import 'package:react/react_client.dart' as react_client;
import 'package:react/react_dom.dart' as react_dom;

import 'counter.dart';

main() {
  react_client.setClientConfiguration();
  react_dom.render(Counter(bloc: CounterBloc()), querySelector('#react_mount_point'));
}