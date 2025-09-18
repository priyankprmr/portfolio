import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/gap.dart';
import 'package:portfolio/core/utils/const_texts.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/theme/pw_text_styles.dart';
import 'package:portfolio/core/theme/text_styles.dart';
import 'package:pdf/widgets.dart' as pw;

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(ConstTexts.educationTitle, style: TextStyles.size16TealW600()),
        Gap(height: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Bachelors of Computer Applications',
                    style: TextStyles.size16BlackBold(),
                  ),
                ),
                Flexible(
                  child: Text('2019 - 2022', style: TextStyles.size16Black()),
                ),
              ],
            ),
            Text('Shree Umiya BCA College', style: TextStyles.size16Black()),
            Text(
              'Sola Bhagvat, Sola, Ahmedabad',
              style: TextStyles.size16Black(),
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
        pw.Text(
          ConstTexts.educationTitle,
          style: PwTextStyles.size14TealW600(),
        ),
        Gap(height: 4.0).toPW(),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Flexible(
                  child: pw.Text(
                    'Bachelor of Computer Applications',
                    style: PwTextStyles.size14BlackBold(),
                  ),
                ),
                pw.Flexible(
                  child: pw.Text(
                    '2019 - 2022',
                    style: PwTextStyles.size12Black(),
                  ),
                ),
              ],
            ),
            pw.Text(
              'Shree Umiya BCA College',
              style: PwTextStyles.size12Black(),
            ),
            pw.Text(
              'Sola Bhagvat, Sola, Ahmedabad',
              style: PwTextStyles.size12Black(),
            ),
          ],
        ).verticalPadding(4.0),
      ],
    );
  }
}


// class EducationDetails {
//   String degree;
//   String collegeName;
//   String duration;
//   String address;

//   EducationDetails({
//     required this.degree,
//     required this.collegeName,
//     required this.duration,
//     required this.address,
//   });
// }