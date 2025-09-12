import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

extension ApplyPadding on Widget {
  Widget allPadding(double value) {
    return Padding(padding: EdgeInsetsGeometry.all(value), child: this);
  }

  Widget horizontalPadding(double value) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: value),
      child: this,
    );
  }

  Widget verticalPadding(double value) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: value),
      child: this,
    );
  }

  Widget symmetricPadding({
    required double horizontal,
    required double vertical,
  }) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }
}

extension ApplyPaddingToPW on pw.Widget {
  pw.Widget allPadding(double value) {
    return pw.Padding(padding: pw.EdgeInsets.all(value), child: this);
  }

  pw.Widget horizontalPadding(double value) {
    return pw.Padding(
      padding: pw.EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  pw.Widget verticalPadding(double value) {
    return pw.Padding(
      padding: pw.EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  pw.Widget symmetricPadding({
    required double horizontal,
    required double vertical,
  }) {
    return pw.Padding(
      padding: pw.EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }
}
