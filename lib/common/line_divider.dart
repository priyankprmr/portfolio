import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';

class LineDivider extends StatelessWidget {
  final double _height;
  final double _padding;
  const LineDivider({super.key, double height = 1.0, double padding = 1.0})
    : _height = height,
      _padding = padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      color: Colors.teal.shade700,
    ).verticalPadding(_padding);
  }
}
