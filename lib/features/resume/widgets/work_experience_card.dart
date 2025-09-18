import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/bullet_point_text.dart';
import 'package:portfolio/core/widgets/gap.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/theme/pw_text_styles.dart';
import 'package:portfolio/core/theme/text_styles.dart';
import 'package:portfolio/features/resume/widgets/work_experience_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class WorkExperienceCard extends StatelessWidget {
  final JobDetails _jobDetails;
  const WorkExperienceCard({
    super.key,
    bool showLine = true,
    required JobDetails jobDetails,
  }) : _jobDetails = jobDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                _jobDetails.designation,
                style: TextStyles.size16BlackBold(),
              ),
            ),

            // if (_showLine)
            Flexible(
              child: Text(
                _jobDetails.duration,
                style: TextStyles.size16Black(),
              ),
            ),
          ],
        ),
        Text(_jobDetails.company, style: TextStyles.size16Black()),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _jobDetails.workSummary
              .map(
                (summary) =>
                    BulletPointText(text: summary).verticalPadding(4.0),
              )
              .toList(),
        ),
      ],
    ).verticalPadding(8.0);
  }

  pw.Widget toPW() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Flexible(
              child: pw.Text(
                _jobDetails.designation,
                style: PwTextStyles.size14BlackBold(),
              ),
            ),
            pw.Flexible(
              child: pw.Text(
                _jobDetails.duration,
                style: PwTextStyles.size12Black(),
              ),
            ),
          ],
        ),
        Gap(height: 4.0).toPW(),
        pw.Text(_jobDetails.company, style: PwTextStyles.size12Black()),
        Gap(height: 4.0).toPW(),
        pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: _jobDetails.workSummary
              .map(
                (summary) =>
                    BulletPointText(text: summary).toPW().verticalPadding(2.0),
              )
              .toList(),
        ),
      ],
    ).verticalPadding(4.0);
  }
}
