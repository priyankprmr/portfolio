import 'package:flutter/material.dart';
import 'package:portfolio/common/bullet_point_text.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/views/widgets/work_experience_widget.dart';
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
            Text(_jobDetails.designation, style: TextStyles.size16BlackBold()),

            // if (_showLine)
            Text(_jobDetails.duration, style: TextStyles.size16Black()),
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
            pw.Text(
              _jobDetails.designation,
              style: PwTextStyles.size14BlackBold(),
            ),
            pw.Text(_jobDetails.duration, style: PwTextStyles.size12Black()),
          ],
        ),
        pw.Text(_jobDetails.company, style: PwTextStyles.size14Black()),
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
