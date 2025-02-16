import 'package:flutter/material.dart';

class H extends StatelessWidget {
  final double value;
  const H(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}
