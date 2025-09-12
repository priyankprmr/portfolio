import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:pdf/pdf.dart' show PdfColors;
import 'package:pdf/widgets.dart' as pw;

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

  pw.Widget toPW() {
    return pw.Icon(
      pw.IconData(0xe163),
      size: _size,
      color: PdfColors.black,
    ).horizontalPadding(_padding);
  }
}
