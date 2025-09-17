import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/utils/const_texts.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:pdf/widgets.dart' as pw;

class ProfessionalSummaryWidget extends StatelessWidget {
  const ProfessionalSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(ConstTexts.designation, style: TextStyles.size30TealW600()),
        Gap(height: 6.0),
        Row(
          children: [
            Flexible(
              child: Text(
                ConstTexts.profSummary,
                textAlign: TextAlign.start,
                style: TextStyles.size14Black(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  pw.Widget toPW() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Text(ConstTexts.designation, style: PwTextStyles.size30TealW600()),
        Gap(height: 6.0).toPW(),
        pw.Row(
          children: [
            pw.Flexible(
              child: pw.Text(
                ConstTexts.profSummary,
                textAlign: pw.TextAlign.start,
                style: PwTextStyles.size14Black(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
