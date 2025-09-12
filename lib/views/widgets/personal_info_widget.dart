import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/horizontal_dot_spacer.dart';
import 'package:portfolio/common/line_divider.dart';
import 'package:portfolio/utils/const_texts.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:web/web.dart' as web;
import 'package:pdf/widgets.dart' as pw;

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(ConstTexts.name, style: TextStyles.size30TealW600()),
        LineDivider(padding: 8.0, height: 3.0),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 615) {
              return Row(
                children: [
                  // Text(constraints.maxWidth.toString()),
                  Text(ConstTexts.email, style: TextStyles.size12Black()),
                  HorizontalDotSpacer(padding: 14.0),
                  Text(ConstTexts.phoneNumber, style: TextStyles.size12Black()),
                  HorizontalDotSpacer(padding: 14.0),
                  GestureDetector(
                    onTap: () {
                      if (kIsWeb) {
                        web.window.open(
                          'https://${ConstTexts.linkedinProfile}',
                        );
                      }
                    },
                    child: Text(
                      ConstTexts.linkedinProfile,
                      style: TextStyles.size12Black().copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  HorizontalDotSpacer(padding: 14.0),
                  GestureDetector(
                    onTap: () {
                      if (kIsWeb) {
                        web.window.open('https://${ConstTexts.githubProfile}');
                      }
                    },
                    child: Text(
                      ConstTexts.githubProfile,
                      style: TextStyles.size12Black().copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HorizontalDotSpacer(padding: 8.0),
                      Text(ConstTexts.email, style: TextStyles.size12Black()),
                    ],
                  ),
                  Row(
                    children: [
                      HorizontalDotSpacer(padding: 8.0),
                      Text(
                        ConstTexts.phoneNumber,
                        style: TextStyles.size12Black(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      HorizontalDotSpacer(padding: 8.0),
                      GestureDetector(
                        onTap: () {
                          if (kIsWeb) {
                            web.window.open(
                              'https://${ConstTexts.linkedinProfile}',
                            );
                          }
                        },
                        child: Text(
                          ConstTexts.linkedinProfile,
                          style: TextStyles.size12Black().copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      HorizontalDotSpacer(padding: 8.0),
                      GestureDetector(
                        onTap: () {
                          if (kIsWeb) {
                            web.window.open(
                              'https://${ConstTexts.githubProfile}',
                            );
                          }
                        },
                        child: Text(
                          ConstTexts.githubProfile,
                          style: TextStyles.size12Black().copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }

  pw.Widget toPW() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Text(ConstTexts.name, style: PwTextStyles.size30TealW600()),
        LineDivider(padding: 8.0, height: 3.0).toPW(),
        pw.Row(
          children: [
            // Text(constraints.maxWidth.toString()),
            pw.Text(ConstTexts.email, style: PwTextStyles.size12Black()),
            HorizontalDotSpacer(padding: 14.0).toPW(),
            pw.Text(ConstTexts.phoneNumber, style: PwTextStyles.size12Black()),
            HorizontalDotSpacer(padding: 14.0).toPW(),
            pw.Text(
              ConstTexts.linkedinProfile,
              style: PwTextStyles.size12Black().copyWith(
                decoration: pw.TextDecoration.underline,
              ),
            ),
            HorizontalDotSpacer(padding: 14.0).toPW(),
            pw.Text(
              ConstTexts.githubProfile,
              style: PwTextStyles.size12Black().copyWith(
                decoration: pw.TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
