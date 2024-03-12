import 'package:Tutora/pages/student/PDF/Hsc/Biology2nd/AgricultureDocument.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AgricultureReader extends StatefulWidget {
  AgricultureReader(this.doc, {Key? key}) : super(key: key);
  AgricultureDocument doc;

  @override
  State<AgricultureReader> createState() => _AgricultureReaderState();
}

class _AgricultureReaderState extends State<AgricultureReader> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.doc.title!),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: SfPdfViewer.network(
        widget.doc.docUrl!,
        key: _pdfViewerKey,
      ),
    );
  }
}
