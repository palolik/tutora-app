import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Class8/DocumentPDF8.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen8 extends StatefulWidget {
  ReaderScreen8(this.doc, {Key? key}) : super(key: key);
  DocumentPDF8 doc;

  @override
  State<ReaderScreen8> createState() => _ReaderScreen8State();
}

class _ReaderScreen8State extends State<ReaderScreen8> {
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
