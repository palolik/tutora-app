import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/class6/DocumentPdf6.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen6 extends StatefulWidget {
  ReaderScreen6(this.doc, {Key? key}) : super(key: key);
  Document doc;

  @override
  State<ReaderScreen6> createState() => _ReaderScreen6State();
}

class _ReaderScreen6State extends State<ReaderScreen6> {
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
