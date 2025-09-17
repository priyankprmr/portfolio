import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/grey_box.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/const_texts.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
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
        GreyBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bachelor of Computer Applications',
                    style: TextStyles.size16BlackBold(),
                  ),
                  Expanded(
                    child: LineDivider(height: 2.0).horizontalPadding(8.0),
                  ),
                  Text('2019 - 2022', style: TextStyles.size16Black()),
                ],
              ),
              Text('Shree Umiya BCA College', style: TextStyles.size16Black()),
              Text(
                'Sola Bhagvat, Sola, Ahmedabad',
                style: TextStyles.size16Black(),
              ),
            ],
          ),
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
          style: PwTextStyles.size16TealW600(),
        ),
        Gap(height: 8.0).toPW(),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Bachelor of Computer Applications',
                  style: PwTextStyles.size16BlackBold(),
                ),
                pw.Expanded(
                  child: LineDivider(height: 2.0).toPW().horizontalPadding(8.0),
                ),
                pw.Text('2019 - 2022', style: PwTextStyles.size16Black()),
              ],
            ),
            pw.Text(
              'Shree Umiya BCA College',
              style: PwTextStyles.size16Black(),
            ),
            pw.Text(
              'Sola Bhagvat, Sola, Ahmedabad',
              style: PwTextStyles.size16Black(),
            ),
          ],
        ),
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