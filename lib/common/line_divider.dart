import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:pdf/pdf.dart' show PdfColors;
import 'package:pdf/widgets.dart' as pw;

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

  pw.Widget toPW() {
    return pw.Container(
      height: _height,
      color: PdfColors.teal700,
    ).verticalPadding(_padding);
  }
}
