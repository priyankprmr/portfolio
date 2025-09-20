import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/gap.dart';
import 'package:portfolio/core/widgets/line_divider.dart';
import 'package:portfolio/features/resume/providers/pdf_provider.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/features/resume/widgets/education_widget.dart';
import 'package:portfolio/features/resume/widgets/horizontal_resume_view.dart';
import 'package:portfolio/features/resume/widgets/personal_info_widget.dart';
import 'package:portfolio/features/resume/widgets/professional_summary_widget.dart';
import 'package:portfolio/features/resume/widgets/skills_widget.dart';
import 'package:portfolio/features/resume/widgets/work_experience_widget.dart';
import 'package:provider/provider.dart';
import 'package:pdf/widgets.dart' as pw;

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfProvider = context.read<PdfProvider>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,

        onPressed: () {
          pdfProvider.addPage(
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                PersonalInfoWidget().toPW(),
                LineDivider(padding: 16.0, height: 1.0).toPW(),
                ProfessionalSummaryWidget().toPW(),
                LineDivider(padding: 16.0, height: 1.0).toPW(),
                WorkExperienceWidget().toPW(),
                LineDivider(padding: 16.0, height: 1.0).toPW(),
                SkillsWidget().toPW(),
                LineDivider(padding: 16.0, height: 1.0).toPW(),
                EducationWidget().toPW(),
              ],
            ),
          );
          pdfProvider.viewPdf();
        },
        child: Icon(Icons.download_rounded, color: Colors.white),
      ),

      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxWidth > 700
                ? HorizontalResumeView()
                : Container(
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
                  );
          },
        ),
      ),
    );
  }
}
