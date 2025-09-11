import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/views/widgets/education_widget.dart';
import 'package:portfolio/views/widgets/personal_info_widget.dart';
import 'package:portfolio/views/widgets/professional_summary_widget.dart';
import 'package:portfolio/views/widgets/skills_widget.dart';
import 'package:portfolio/views/widgets/work_experience_widget.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.all(16.0),
        margin: EdgeInsetsGeometry.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PersonalInfoWidget(),
              Gap(height: 8.0),
              ProfessionalSummaryWidget(),
              Gap(height: 8.0),
              WorkExperienceWidget(),
              Gap(height: 8.0),
              SkillsWidget(),
              Gap(height: 8.0),
              EducationWidget(),
              Gap(height: 8.0),
            ],
          ).allPadding(16.0),
        ),
      ),
    );
  }
}
