import 'package:flutter/material.dart';

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
