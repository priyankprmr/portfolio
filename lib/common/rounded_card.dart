import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/pw_text_styles.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:pdf/pdf.dart' show PdfColors;
import 'package:pdf/widgets.dart' as pw;

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

  pw.Widget toPW(){
    return pw.Container(
      padding: pw.EdgeInsets.all(8.0),
      decoration: pw.BoxDecoration(
        color: PdfColors.teal700,
        borderRadius: pw.BorderRadius.circular(18.0),
      ),
      child: pw.Text(
        _text,
        style: PwTextStyles.size14White(),
      ).horizontalPadding(8.0),
    );
  }
}
