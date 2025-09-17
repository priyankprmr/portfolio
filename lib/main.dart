import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/views/resume_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PwTextStyles.init();
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ResumeView();
      },
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
