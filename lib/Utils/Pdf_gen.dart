import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List>GeneratePDF()
async {
  var PDF = pw.Document();

  PDF.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      orientation: pw.PageOrientation.portrait,
      build: (context) {
        return pw.Center(
          child: pw.Container(
            height: 100,
            width: 100,
            color: PdfColors.red,
          )
        );
      },
    ),
  );

  return await PDF.save();

}