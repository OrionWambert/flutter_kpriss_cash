import 'package:flutter/material.dart';

class CounterTemplate extends StatelessWidget {
  final Widget content;
  final Widget action;

  const CounterTemplate({
    super.key,
    required this.content,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content,
      floatingActionButton: action,
    );
  }
}
