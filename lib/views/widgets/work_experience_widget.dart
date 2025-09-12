import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/grey_box.dart';
import 'package:portfolio/utils/const_texts.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/views/widgets/work_experience_card.dart';
import 'package:pdf/widgets.dart' as pw;

class JobDetails {
  final String designation;
  final String company;
  final String duration;
  final Iterable<String> workSummary;

  JobDetails({
    required this.designation,
    required this.company,
    required this.duration,
    required this.workSummary,
  });
}

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({super.key});

  static final _jobs = <JobDetails>[
    JobDetails(
      designation: 'Flutter Developer',
      company: 'Helmsman Consultancy',
      duration: '08/24 - 06/25',
      workSummary: const [
        'Worked on an admin panel for a Flutter Web project, integrated permissions, user, and role management features.',
        'Built a medical appointment booking app, implementing UI using GetX for state management, Integrated Firebase for authentication and database handling in the medical app.',
        'Implemented a doctor availability and timeslot finding and scheduling algorithm in Node.js.',
      ],
    ),
    JobDetails(
      designation: 'Jr Flutter Developer',
      company: 'Magespider Infoweb Pvt Ltd',
      duration: '05/22 - 08/24',
      workSummary: [
        'Built a Flutter app with custom UI, Firebase integration, real-time chat, and graph visualizations',
        'Developed a chat-based dating app, implementing Firebase chat and worked on audio/video calling with Agora',
        'Migrated a native Android app to Flutter, recreating a complex UI with extensive SVG and PNG assets',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          ConstTexts.workExperienceTitle,
          style: TextStyles.size16TealW600(),
        ),
        Gap(height: 8.0),
        GreyBox(
          child: Column(
            children: [
              ..._jobs.map((job) => WorkExperienceCard(jobDetails: job)),
            ],
          ),
        ),
      ],
    );
  }

  pw.Widget toPW() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Text(
          ConstTexts.workExperienceTitle,
          style: PwTextStyles.size16TealW600(),
        ),
        Gap(height: 8.0).toPW(),
        GreyBox().toPW(
          child: pw.Column(
            children: [
              ..._jobs.map((job) => WorkExperienceCard(jobDetails: job).toPW()),
            ],
          ),
        ),
      ],
    );
  }
}
