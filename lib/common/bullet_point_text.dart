import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:pdf/widgets.dart' as pw;

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
        Flexible(child: Text(_text, style: TextStyles.size14Black())),
      ],
    );
  }

  pw.Widget toPW() {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        HorizontalDotSpacer(
          size: 6.0,
        ).toPW().symmetricPadding(vertical: 6.0, horizontal: 8.0),
        pw.Flexible(child: pw.Text(_text, style: PwTextStyles.size12Black())),
      ],
    );
  }
}
