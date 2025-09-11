import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:web/web.dart' as web;

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  static const String _linkedinLink = 'linkedin.com/in/priyankprmr';
  static const String _githubLink = 'github.com/priyankprmr';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Priyank Parmar', style: TextStyles.size30TealW600()),
        LineDivider(padding: 8.0, height: 3.0),
        Row(
          children: [
            Text('priynk.prmr@gmail.com', style: TextStyles.size12Black()),
            HorizontalDotSpacer(padding: 14.0),
            Text('+91-9265496342', style: TextStyles.size12Black()),
            HorizontalDotSpacer(padding: 14.0),
            GestureDetector(
              onTap: () {
                web.window.open('https://$_linkedinLink');
              },
              child: Text(
                _linkedinLink,
                style: TextStyles.size12Black().copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            HorizontalDotSpacer(padding: 14.0),
            GestureDetector(
              onTap: () {
                web.window.open('https://$_githubLink');
              },
              child: Text(
                _githubLink,
                style: TextStyles.size12Black().copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
