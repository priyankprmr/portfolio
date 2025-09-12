import 'package:flutter/material.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/views/resume_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PwTextStyles.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeView(),
    );
  }
}
