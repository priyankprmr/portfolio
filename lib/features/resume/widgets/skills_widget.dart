import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/gap.dart';
import 'package:portfolio/core/widgets/rounded_card.dart';
import 'package:portfolio/core/utils/const_texts.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/theme/pw_text_styles.dart';
import 'package:portfolio/core/theme/text_styles.dart';
import 'package:pdf/widgets.dart' as pw;

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  static const List<String> _skills = [
    'Dart',
    'Firebase',
    'Authentication',
    'Riverpod',
    'GetX',
    'Provider',
    'API Integration',
    'SQLite',
    'Hive',
    'Node.js',
    'Git',
    'Web',
    'Figma',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(ConstTexts.skillsTitle, style: TextStyles.size16TealW600()),
        Gap(height: 8.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [..._skills.map((skill) => RoundedCard(text: skill))],
        ),
      ],
    );
  }

  pw.Widget toPW() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Text(ConstTexts.skillsTitle, style: PwTextStyles.size14TealW600()),
        Gap(height: 4.0).toPW(),
        pw.Wrap(
          spacing: 4.0,
          runSpacing: 4.0,
          children: [
            ..._skills.map((skill) => RoundedCard(text: skill).toPW()),
          ],
        ).verticalPadding(4.0),
      ],
    );
  }
}
