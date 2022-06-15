import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:test113/models/coffee_store.dart';

extension Navigation on AuthStore {
  void navigateToMenu(BuildContext context) {
    final state = loginState.value;

    if (state == LoaderState.completed) {
      GoRouter.of(context).goNamed('menu');
    }
  }
}
