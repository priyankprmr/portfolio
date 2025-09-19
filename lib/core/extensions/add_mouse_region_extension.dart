import 'package:flutter/material.dart';

extension AddMouseRegion on Widget {
  Widget withMouseRegion(Function(PointerEvent) onHover) => MouseRegion(
    onHover: onHover,
    cursor: SystemMouseCursors.none,
    child: this,
  );
}
