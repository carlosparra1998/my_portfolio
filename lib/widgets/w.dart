import 'package:flutter/material.dart';

class W extends StatelessWidget {
  final double value;
  const W(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value);
  }
}
