import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String _text;
  const SkillCard({super.key, required String text}) : _text = text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade700,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(_text, style: TextStyle(color: Colors.white)),
    );
  }
}
