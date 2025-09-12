import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

class PwTextStyles {
  PwTextStyles._();
  // static font refs
  static late final pw.Font _latoRegular;
  static late final pw.Font _latoBold;

  /// Call this once before using the styles
  static Future<void> init() async {
    _latoRegular = pw.Font.ttf(
      await rootBundle.load("assets/fonts/Lato/Lato-Regular.ttf"),
    );
    _latoBold = pw.Font.ttf(
      await rootBundle.load("assets/fonts/Lato/Lato-Bold.ttf"),
    );
  }

  static pw.TextStyle size30TealW600() {
    return pw.TextStyle(
      font: _latoBold,
      fontSize: 24,
      color: PdfColors.teal700,
    );
  }

  static pw.TextStyle size16TealW600() {
    return pw.TextStyle(
      font: _latoBold,
      fontSize: 11,
      color: PdfColors.teal700,
    );
  }

  static pw.TextStyle size12Black() {
    return pw.TextStyle(
      font: _latoRegular,
      // fontSize: 12,
      color: PdfColors.black,
    );
  }

  static pw.TextStyle size14Black() {
    return pw.TextStyle(
      font: _latoRegular,
      // fontSize: 14,
      color: PdfColors.black,
    );
  }

  static pw.TextStyle size14White() {
    return pw.TextStyle(
      font: _latoRegular,
      // fontSize: 14,
      color: PdfColors.white,
    );
  }

  static pw.TextStyle size16Black() {
    return pw.TextStyle(
      font: _latoRegular,
      fontSize: 11,
      color: PdfColors.black,
    );
  }

  static pw.TextStyle size16BlackBold() {
    return pw.TextStyle(font: _latoBold, fontSize: 16, color: PdfColors.black);
  }

  static pw.TextStyle size18BlackBold() {
    return pw.TextStyle(font: _latoBold, fontSize: 18, color: PdfColors.black);
  }
}
