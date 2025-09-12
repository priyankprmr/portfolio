import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/rounded_card.dart';
import 'package:portfolio/utils/text_styles.dart';

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
        Text('SKILLS', style: TextStyles.size16TealW600()),
        Gap(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [..._skills.map((skill) => RoundedCard(text: skill))],
          ),
        ),
      ],
    );
  }
}
