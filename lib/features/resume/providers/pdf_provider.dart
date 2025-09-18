import 'dart:convert' show base64;
import 'dart:js_interop';

import 'package:pdf/pdf.dart' show PdfPageFormat;
import 'package:pdf/widgets.dart' as pw;
import 'package:portfolio/core/utils/const_texts.dart' show ConstTexts;
import 'package:web/web.dart' as web;

class PdfProvider {
  late pw.Document pdf;

  PdfProvider() : pdf = pw.Document();

  void addPage(pw.Widget child) {
    pdf.addPage(
      index: 0,
      pw.Page(
        margin: pw.EdgeInsets.all(28.0),
        pageFormat: PdfPageFormat.a4,
        build: (context) => child,
      ),
    );
  }

  // Future<Uint8List> get pdfData async => await pdf.save();

  Future<void> viewPdf() async {
    final pdfData = await pdf.save();
    final blob = web.Blob(
      [pdfData.toJS].toJS,
      web.BlobPropertyBag(type: 'application/pdf'),
    );

    final url = web.URL.createObjectURL(blob);
    web.window.open(url);
  }

  Future<void> downloadPdf() async {
    final pdfData = await pdf.save();
    List<int> fileInts = List.from(pdfData);

    final fileName = '${ConstTexts.name} ${ConstTexts.experience}'
        .toLowerCase()
        .replaceAll(' ', '_');

    web.HTMLAnchorElement()
      ..href =
          "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(fileInts)}"
      ..setAttribute("download", "$fileName.pdf")
      ..click();
  }
}
