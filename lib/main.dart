import 'package:demo_app/src/features/user/data/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:demo_app/src/features/cubit_counter/use_case/counter_cubit.dart';
import 'package:go_router/go_router.dart';

void main() {
  //? 1 - Null Safety
  debugPrint("1 - Null Safety:");

  //? 2 - Hibryd Clean Architecture + Feature first (PADD)
  debugPrint("2 - Hibryd Clean Architecture + Feature first (PADD):");
  UserService userService = UserService();
  debugPrint(userService.getUserName());

  //? 3 - State Management - Cubit
  debugPrint("3 - State Management - Cubit:");
  CounterCubit counterCubit = CounterCubit();
  debugPrint("Initial Counter Value: ${counterCubit.state}");
  counterCubit.increment();
  debugPrint("Counter Value after increment: ${counterCubit.state}");
  counterCubit.decrement();
  debugPrint("Counter Value after decrement: ${counterCubit.state}");
  counterCubit.reset();
  debugPrint("Counter Value after reset: ${counterCubit.state}");
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Text('Home Page'),
      routes: [
        GoRoute(
          path: '/details',
          builder: (context, state) => const Text('Details Page'),
        ),
      ],
    ),
  ],
);
