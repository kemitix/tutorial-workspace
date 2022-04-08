//import 'package:bloc_test/bloc_test.dart';

import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

import '../bin/counter_bloc.dart';

void main() {
  group('CounterBlock', () {
    late CounterBloc counterBlock;
    setUp(() {
      counterBlock = CounterBloc();
    });
    test('initial state is 0', () {
      expect(counterBlock.state, 0);
    });
  });
}
