import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/theme/text_styles.dart';

class TopNavbar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Center(child: Text('P.', style: TextStyles.size18BlackBold())),
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.0),
      actions: [
        TextButton(
          onPressed: () => context.go('/'),
          child: Text('Home', style: TextStyles.size16BlackBold()),
        ),
        TextButton(
          onPressed: () => context.go('/projects'),
          child: Text('Projects', style: TextStyles.size16BlackBold()),
        ),
        TextButton(
          onPressed: () => context.go('/resume'),
          child: Text('Resume', style: TextStyles.size16BlackBold()),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
