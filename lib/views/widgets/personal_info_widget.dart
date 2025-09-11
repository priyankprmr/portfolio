import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/common/line_divider.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Priyank Parmar',
          style: TextStyle(
            color: Colors.teal.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),
        LineDivider(padding: 8.0, height: 3.0),
        Row(
          children: [
            Text('priynk.prmr@gmail.com'),
            HorizontalDotSpacer(padding: 14.0),
            Text('+91-9265496342'),
            HorizontalDotSpacer(padding: 14.0),
            Text('linkedin.com/in/priyankprmr'),
            HorizontalDotSpacer(padding: 14.0),
            Text('github.com/priyankprmr'),
          ],
        ),
      ],
    );
  }
}
