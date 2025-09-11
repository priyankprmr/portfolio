import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';

class ProfessionalSummaryWidget extends StatelessWidget {
  const ProfessionalSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Flutter Developer',
          style: TextStyle(
            color: Colors.teal.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),
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
                  'Seasoned Flutter Developer with 8+ years of experience crafting high-performance, cross-platform mobile applications. Expertise in Dart, state management, and CI/CD pipelines, with a proven track record of reducing app load times by 40% through optimized widget trees and efficient coding practices. Adept at leading agile development teams and integrating cutting-edge technologies like AI-driven UX and advanced analytics to deliver innovative, user-centric solutions.',
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
