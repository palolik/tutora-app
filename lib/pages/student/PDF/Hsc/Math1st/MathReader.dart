import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math1st/MathDocument.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MathReader extends StatefulWidget {
  MathReader(this.doc, {Key? key}) : super(key: key);
  MathDocument doc;

  @override
  State<MathReader> createState() => _MathReaderState();
}

class _MathReaderState extends State<MathReader> {
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
