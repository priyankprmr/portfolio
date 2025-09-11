import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/text_styles.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('EDUCATION', style: TextStyles.size16TealW600()),
        Gap(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
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