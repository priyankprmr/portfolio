import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/utils/const_texts.dart';
import 'package:portfolio/features/home/home_page.dart';
import 'package:portfolio/features/projects/projects_page.dart';
import 'package:portfolio/features/resume/resume_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            // TODO: remove after web upload
            return const ResumePage();
            // TODO: uncomment after web upload
            // return const HomePage();
          },
        ),

        GoRoute(
          path: '/projects',
          builder: (BuildContext context, GoRouterState state) {
            return const ProjectsPage();
          },
        ),
        // TODO: uncomment after web upload
        // GoRoute(
        //   path: '/resume',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const ResumePage();
        //   },
        // ),
      ],
    );

    return MaterialApp.router(
      title: ConstTexts.name,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
