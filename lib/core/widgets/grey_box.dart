import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

class GreyBox extends StatelessWidget {
  final Widget? _child;
  const GreyBox({super.key, Widget? child}) : _child = child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: _child,
    );
  }

  pw.Widget toPW({required pw.Widget child}) => pw.Container(
    decoration: pw.BoxDecoration(
      color: PdfColors.grey200,
      borderRadius: pw.BorderRadius.circular(8.0),
    ),
    padding: pw.EdgeInsets.all(16.0),
    child: child,
  );
}
