import 'package:flutter/material.dart';
import 'package:portfolio/common/bullet_point_text.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/extensions.dart';

class WorkExperienceCard extends StatelessWidget {
  final bool _showLine;
  const WorkExperienceCard({super.key, bool showLine = true})
    : _showLine = showLine;

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
            if (_showLine)
              Expanded(child: LineDivider(height: 2.0).horizontalPadding(8.0)),
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
