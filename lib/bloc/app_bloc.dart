import 'dart:async';

class CounterBloc {
  int _count = 0;
  int get count => _count;

  final countController = StreamController<int>();

  Stream<int> get myStream => countController.stream;

  void increment() {
    _count++;
    countController.sink.add(count);
  }

  void closeStream() {
    countController.close();
  }
}