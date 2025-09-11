import 'package:flutter/material.dart';
import 'package:portfolio/common/gap.dart';
import 'package:portfolio/common/rounded_card.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'SKILLS',
          style: TextStyle(
            color: Colors.teal.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        Gap(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              ...'Lorem Ipsum Lorem Ipsum LoremLoremLorem IpsumLorem Lorem Ipsum Lorem Ipsum LoremLoremLorem Ipsum LoremLorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                  .split(' ')
                  .map((e) => RoundedCard(text: e)),
            ],
          ),
        ),
      ],
    );
  }
}
