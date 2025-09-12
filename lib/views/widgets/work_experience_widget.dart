import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/views/widgets/work_experience_card.dart';

class JobDetails {
  String designation;
  String company;
  String duration;
  Iterable<String> workSummary;

  JobDetails({
    required this.designation,
    required this.company,
    required this.duration,
    required this.workSummary,
  });
}

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('WORK EXPERIENCE', style: TextStyles.size16TealW600()),
        Gap(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              WorkExperienceCard(
                jobDetails: JobDetails(
                  designation: 'Flutter Developer',
                  company: 'Helmsman Consultancy',
                  duration: '08/24 - 06/25',
                  workSummary: [
                    'Worked on an admin panel for a Flutter Web project, integrated permissions, user, and role management features.',
                    'Built a medical appointment booking app, implementing UI using GetX for state management, Integrated Firebase for authentication and database handling in the medical app.',
                    'Implemented a doctor availability and timeslot finding and scheduling algorithm in Node.js.',
                  ],
                ),
              ),
              WorkExperienceCard(
                jobDetails: JobDetails(
                  designation: 'Jr Flutter Developer',
                  company: 'Magespider Infoweb Pvt Ltd',
                  duration: '05/22 - 08/24',
                  workSummary: [
                    'Built a Flutter app with custom UI, Firebase integration, real-time chat, and graph visualizations',
                    'Developed a chat-based dating app, implementing Firebase chat and worked on audio/video calling with Agora',
                    'Migrated a native Android app to Flutter, recreating a complex UI with extensive SVG and PNG assets',
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
