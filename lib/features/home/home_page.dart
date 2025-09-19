import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Hi, I’m Priyank 👋",
          style: TextStyles.size18BlackBold().copyWith(fontSize: 30),
        ),
      ),
    );
  }
}
