import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/cursor_provider.dart';
import 'package:provider/provider.dart';

class CursorOverlay extends StatelessWidget {
  const CursorOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Consumer<CursorProvider>(
        builder: (context, cp, child) {
          return Stack(
            children: [
              // Trailing dots
              ...cp.dots.map(
                (dot) => Positioned(
                  left: dot.position.dx - 15,
                  top: dot.position.dy - 15,
                  child: Opacity(
                    opacity: dot.opacity,
                    child: Container(
                      width: cp.cursorSize.width,
                      height: cp.cursorSize.height,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
              ),

              // Ring cp
              Positioned(
                left: cp.cursorCenter.$1,
                top: cp.cursorCenter.$2,
                child: Container(
                  width: cp.cursorSize.width,
                  height: cp.cursorSize.height,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
