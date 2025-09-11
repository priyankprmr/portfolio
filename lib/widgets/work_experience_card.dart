import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
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
          children: [Text('Flutter Developer'), Text('08/24 - 06/25')],
        ),
        Text('Helmsman Consultancy'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HorizontalDotSpacer().verticalPadding(6.0),
                Flexible(
                  child: Text(
                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                    // textDirection: TextDirection.ltr,
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HorizontalDotSpacer().verticalPadding(6.0),
                Flexible(
                  child: Text(
                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                    // textDirection: TextDirection.ltr,
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HorizontalDotSpacer().verticalPadding(6.0),
                Flexible(
                  child: Text(
                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                    // textDirection: TextDirection.ltr,
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
