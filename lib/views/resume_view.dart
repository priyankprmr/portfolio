// import 'dart:convert' show base64;

import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/providers/pdf_provider.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/views/widgets/education_widget.dart';
import 'package:portfolio/views/widgets/personal_info_widget.dart';
import 'package:portfolio/views/widgets/professional_summary_widget.dart';
import 'package:portfolio/views/widgets/skills_widget.dart';
import 'package:portfolio/views/widgets/work_experience_widget.dart';
import 'package:provider/provider.dart';
import 'package:pdf/widgets.dart' as pw;

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfProvider = context.read<PdfProvider>();

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

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,

        onPressed: pdfProvider.viewPdf,
        child: Icon(Icons.download_rounded, color: Colors.white),
      ),

      body: Center(
        child: Container(
          padding: EdgeInsetsGeometry.all(16.0),
          margin: EdgeInsetsGeometry.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(8.0),
          ),
          constraints: BoxConstraints.tightFor(
            width: MediaQuery.sizeOf(context).width / 2,
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
    );
  }
}
