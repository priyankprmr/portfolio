import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/utils/text_styles.dart';

class ProfessionalSummaryWidget extends StatelessWidget {
  const ProfessionalSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Flutter Developer', style: TextStyles.size30TealW600()),
        Gap(height: 6.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'Flutter developer with 3 years of experience delivering 6 live projects. Skilled in building cross-platform and web applications with strong expertise in Firebase integration, authentication, and cloud services. Proficient in state management using Riverpod, GetX, and Provider. Experienced in API integration and local storage.',
                  textAlign: TextAlign.start,
                  style: TextStyles.size14Black(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
