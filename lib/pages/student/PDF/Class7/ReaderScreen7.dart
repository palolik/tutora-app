import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Class7/DocumentPdf7.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen7 extends StatefulWidget {
  ReaderScreen7(this.doc, {Key? key}) : super(key: key);
  DocumentPDF7 doc;

  @override
  State<ReaderScreen7> createState() => _ReaderScreen7State();
}

class _ReaderScreen7State extends State<ReaderScreen7> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.doc.title!),
      ),
      body: SfPdfViewer.network(
        widget.doc.docUrl!,
        key: _pdfViewerKey,
      ),
    );
  }
}
