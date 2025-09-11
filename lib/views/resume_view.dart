import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.all(16.0),
        margin: EdgeInsetsGeometry.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Priyank Parmar',
              style: TextStyle(
                color: Colors.teal.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 30.0,
              ),
            ),
            gap(height: 10.0),
            Row(
              children: [
                Text('priynk.prmr@gmail.com'),
                horizontalDotSpacer(padding: 14.0),
                Text('+91-9265496342'),
                horizontalDotSpacer(padding: 14.0),
                Text('linkedin.com/in/priyankprmr'),
                horizontalDotSpacer(padding: 14.0),
                Text('github.com/priyankprmr'),
              ],
            ),
            gap(height: 10.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.teal.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 30.0,
              ),
            ),
            gap(height: 10.0),
            Text('''
Seasoned Flutter Developer with 8+ years of experience crafting high-performance, cross-platform mobile applications.
Expertise in Dart, state management, and CI/CD pipelines,
with a proven track record of reducing app load times by 40% through optimized widget trees and efficient coding practices.
Adept at leading agile development teams and integrating cutting-edge technologies like AI-driven UX and advanced analytics to deliver innovative, user-centric solutions.
'''),
            gap(height: 20.0),
            Text(
              'Work Experience',
              style: TextStyle(
                color: Colors.teal.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          ],
        ).allPadding(16.0),
      ),
    );
  }

  Widget horizontalDotSpacer({double size = 4.0, double padding = 8.0}) {
    return Icon(
      Icons.circle,
      size: size,
      color: Colors.black,
    ).horizontalPadding(padding);
  }

  Widget gap({double? height, double? width}) =>
      SizedBox(height: height, width: width);
}
