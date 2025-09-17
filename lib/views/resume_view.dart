// import 'dart:convert' show base64;

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart' show PdfPageFormat;
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/views/widgets/education_widget.dart';
import 'package:portfolio/views/widgets/personal_info_widget.dart';
import 'package:portfolio/views/widgets/professional_summary_widget.dart';
import 'package:portfolio/views/widgets/skills_widget.dart';
import 'package:portfolio/views/widgets/work_experience_widget.dart';
import 'package:web/web.dart' as web;
// import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:js_interop' as js;

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    final pdf = pw.Document();

    final widgetsTree = Column(
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
    ).allPadding(16.0);

    pdf.addPage(
      index: 0,
      pw.Page(
        margin: pw.EdgeInsets.all(28.0),
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
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
          );
        },
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,

        onPressed: () async {
          var savedFile = await pdf.save();
          // List<int> fileInts = List.from(savedFile);
          final blob = web.Blob(
            [savedFile.toJS].toJS,
            web.BlobPropertyBag(type: 'application/pdf'),
          );
          final url = web.URL.createObjectURL(blob);
          web.window.open(url, '/resume');
          // web.HTMLAnchorElement()
          //   ..href =
          //       "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(fileInts)}"
          //   ..setAttribute(
          //     "download",
          //     "${DateTime.now().millisecondsSinceEpoch}.pdf",
          //   )
          //   ..click();
        },
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
          child: SingleChildScrollView(child: widgetsTree),
        ),
      ),
    );
  }
}
