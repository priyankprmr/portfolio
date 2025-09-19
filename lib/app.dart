import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/extensions/add_mouse_region_extension.dart';
import 'package:portfolio/core/providers/cursor_provider.dart';
import 'package:portfolio/core/utils/const_texts.dart';
import 'package:portfolio/core/widgets/cursor_overlay.dart';
import 'package:portfolio/core/widgets/top_navbar.dart';
import 'package:portfolio/features/home/home_page.dart';
import 'package:portfolio/features/projects/projects_page.dart';
import 'package:portfolio/features/resume/resume_view.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: <RouteBase>[
        ShellRoute(
          builder: (context, state, child) {
            return Stack(
              children: [
                Scaffold(
                  appBar: TopNavbar(),
                  backgroundColor: Colors.transparent,
                  body: child,
                ),
                CursorOverlay(),
              ],
            ).withMouseRegion(context.read<CursorProvider>().onMouseMove);
          },
          routes: [
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return const HomePage();
              },
            ),

            GoRoute(
              path: '/projects',
              builder: (BuildContext context, GoRouterState state) {
                return const ProjectsPage();
              },
            ),
            GoRoute(
              path: '/resume',
              builder: (BuildContext context, GoRouterState state) {
                return const ResumePage();
              },
            ),
          ],
        ),
      ],
    );

    return MaterialApp.router(
      title: ConstTexts.name,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
