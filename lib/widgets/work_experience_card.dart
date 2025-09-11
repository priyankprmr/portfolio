import 'package:flutter/material.dart';
import 'package:portfolio/common/bullet_point_text.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/views/widgets/work_experience_widget.dart';

class WorkExperienceCard extends StatelessWidget {
  final bool _showLine;
  final JobDetails _jobDetails;
  const WorkExperienceCard({
    super.key,
    bool showLine = true,
    required JobDetails jobDetails,
  }) : _showLine = showLine,
       _jobDetails = jobDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_jobDetails.designation, style: TextStyles.size16BlackBold()),
            if (_showLine)
              Expanded(child: LineDivider(height: 2.0).horizontalPadding(8.0)),
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
}
