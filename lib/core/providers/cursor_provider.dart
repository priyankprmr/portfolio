import 'dart:async';

import 'package:flutter/material.dart';

class Dot {
  Offset position;
  double opacity;
  Dot({required this.position, required this.opacity});
}

class CursorProvider extends ChangeNotifier {
  Offset _cursor = Offset.zero;
  final List<Dot> _dots = [];

  Offset get cursor => _cursor;
  List<Dot> get dots => _dots;

  late Timer _timer;

  Size get cursorSize => Size(30, 30);

  (double, double) get cursorCenter =>
      (cursor.dx - (cursorSize.height / 2), cursor.dy - (cursorSize.width / 2));

  CursorProvider() {
    _timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) => removeTrail(),
    );
  }

  void onMouseMove(PointerEvent event) {
    _cursor = event.localPosition;
    _dots.add(Dot(position: event.localPosition, opacity: 1.0));

    if (_dots.length > 20) _dots.removeAt(0);
    removeTrail();
  }

  void removeTrail() {
    if (_dots.isNotEmpty) {
      for (var dot in _dots) {
        if (dot.opacity > 0) {
          dot.opacity -= 0.05;
        }
      }
      _dots.removeWhere((dot) => dot.opacity <= 0);
    }
    notifyListeners();
  }

  void disposeTimer() => _timer.cancel();
}
