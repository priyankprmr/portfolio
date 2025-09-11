import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/text_styles.dart';

class RoundedCard extends StatelessWidget {
  final String _text;
  const RoundedCard({super.key, required String text}) : _text = text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade700,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Text(
        _text,
        style: TextStyles.size14White(),
      ).horizontalPadding(8.0),
    );
  }
}
