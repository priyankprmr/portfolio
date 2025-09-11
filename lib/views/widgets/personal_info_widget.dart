import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/common/line_divider.dart';
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
            GestureDetector(
              onTap: () {
                web.window.open('https://$_linkedinLink');
              },
              child: Text(_linkedinLink),
            ),
            HorizontalDotSpacer(padding: 14.0),
            GestureDetector(
              onTap: () {
                web.window.open('https://$_githubLink');
              },
              child: Text(_githubLink),
            ),
          ],
        ),
      ],
    );
  }
}
