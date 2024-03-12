import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Ssc/DocumentPDFssc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SscReader extends StatefulWidget {
  SscReader(this.doc, {Key? key}) : super(key: key);
  DocumentPDFSsc doc;

  @override
  State<SscReader> createState() => _SscReaderState();
}

class _SscReaderState extends State<SscReader> {
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
