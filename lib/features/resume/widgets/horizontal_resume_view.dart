import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/widgets/gap.dart';
import 'package:portfolio/core/widgets/line_divider.dart';
import 'package:portfolio/features/resume/widgets/education_widget.dart';
import 'package:portfolio/features/resume/widgets/personal_info_widget.dart';
import 'package:portfolio/features/resume/widgets/professional_summary_widget.dart';
import 'package:portfolio/features/resume/widgets/skills_widget.dart';
import 'package:portfolio/features/resume/widgets/work_experience_widget.dart';

class HorizontalResumeView extends StatelessWidget {
  const HorizontalResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  '''"Resume Built with Flutter widgets for a responsive web view,''',
                  style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                  textScaler: TextScaler.linear(2),
                ).horizontalPadding(16.0),
              ),
              Flexible(
                child: Text(
                  '''Downloadable as a PDF, generated dynamically from the same UI."''',
                  style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                  textScaler: TextScaler.linear(2),
                ).horizontalPadding(16.0),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
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
                  LineDivider(padding: 16.0, height: 1.0),
                  ProfessionalSummaryWidget(),
                  LineDivider(padding: 16.0, height: 1.0),
                  WorkExperienceWidget(),
                  LineDivider(padding: 16.0, height: 1.0),
                  SkillsWidget(),
                  LineDivider(padding: 16.0, height: 1.0),
                  EducationWidget(),
                  Gap(height: 12.0),
                ],
              ).allPadding(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
