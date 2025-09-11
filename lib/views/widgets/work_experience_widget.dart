import 'package:flutter/material.dart';
import 'package:portfolio/widgets/work_experience_card.dart';

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'WORK EXPERIENCE',
          style: TextStyle(
            color: Colors.teal.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        WorkExperienceCard(),
        WorkExperienceCard(),
      ],
    );
  }
}
