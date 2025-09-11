import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/utils/extensions.dart';

class BulletPointText extends StatelessWidget {
  final String _text;
  const BulletPointText({super.key, required String text}) : _text = text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HorizontalDotSpacer(
          size: 6.0,
        ).symmetricPadding(vertical: 6.0, horizontal: 8.0),
        Flexible(
          child: Text(
            _text,
            style: TextStyle(fontSize: 12.0, fontFamily: 'Roobert,sans-serif'),
          ),
        ),
      ],
    );
  }
}
