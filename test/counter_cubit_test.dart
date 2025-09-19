//? 4 - State Management - Cubit
import 'package:demo_app/src/features/cubit_counter/use_case/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint("4 - Unit test with TDD - flutter_test");
  test('CounterCubit test with tdd', () {
    final counterCubit = CounterCubit();

    expect(counterCubit.state, 0);

    counterCubit.increment();
    expect(counterCubit.state, 1);

    counterCubit.decrement();
    expect(counterCubit.state, 0);

    counterCubit.reset();
    expect(counterCubit.state, 0);
  });
}
