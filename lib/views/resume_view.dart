
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart' show PdfPageFormat;
import 'package:portfolio/common/gap.dart';
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
        Gap(height: 12.0),
        ProfessionalSummaryWidget(),
        Gap(height: 12.0),
        WorkExperienceWidget(),
        Gap(height: 12.0),
        SkillsWidget(),
        Gap(height: 12.0),
        EducationWidget(),
        Gap(height: 12.0),
      ],
    ).allPadding(16.0);

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              PersonalInfoWidget().toPW(),
              Gap(height: 4.0).toPW(),
              ProfessionalSummaryWidget().toPW(),
              Gap(height: 4.0).toPW(),
              WorkExperienceWidget().toPW(),
              Gap(height: 4.0).toPW(),
              SkillsWidget().toPW(),
              Gap(height: 4.0).toPW(),
              EducationWidget().toPW(),
              Gap(height: 4.0).toPW(),
            ],
          );
        },
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,

        onPressed: () async {
          // context.go('/web_view');
          var savedFile = await pdf.save();
          // List<int> fileInts = List.from(savedFile);

          // ignore: invalid_runtime_check_with_js_interop_types
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

      body: Container(
        padding: EdgeInsetsGeometry.all(16.0),
        margin: EdgeInsetsGeometry.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(child: widgetsTree),
      ),
    );
  }
}
