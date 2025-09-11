import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';

class HorizontalDotSpacer extends StatelessWidget {
  final double _size;
  final double _padding;
  const HorizontalDotSpacer({
    super.key,
    double size = 4.0,
    double padding = 8.0,
  }) : _size = size,
       _padding = padding;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: _size,
      color: Colors.black,
    ).horizontalPadding(_padding);
  }
}
