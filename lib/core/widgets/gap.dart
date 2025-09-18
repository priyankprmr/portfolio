import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class Gap extends StatelessWidget {
  final double _height;
  final double _width;
  const Gap({super.key, double height = 0, double width = 0})
    : _height = height,
      _width = width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _height, width: _width);
  }

  pw.Widget toPW() {
    return pw.SizedBox(height: _height, width: _width);
  }
}
