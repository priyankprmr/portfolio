import 'package:flutter/material.dart';
import 'package:portfolio/common/bullet_point_text.dart';
import 'package:portfolio/utils/extensions.dart';

class WorkExperienceCard extends StatelessWidget {
  const WorkExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Flutter Developer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('08/24 - 06/25'),
          ],
        ),
        Text('Helmsman Consultancy'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BulletPointText(
              text:
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
            ),
          ],
        ),
      ],
    ).verticalPadding(8.0);
  }
}
