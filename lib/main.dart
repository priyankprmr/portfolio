import 'package:flutter/material.dart';
import 'package:portfolio/app.dart';
import 'package:portfolio/core/providers/cursor_provider.dart';
import 'package:portfolio/core/theme/pw_text_styles.dart';
import 'package:portfolio/features/resume/providers/pdf_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PwTextStyles.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CursorProvider()),
        Provider(create: (context) => PdfProvider()),
      ],
      child: const MainApp(),
    ),
  );
}
