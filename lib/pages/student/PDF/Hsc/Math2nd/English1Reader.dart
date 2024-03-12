import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math2nd/English1Document.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class English1Reader extends StatefulWidget {
  English1Reader(this.doc, {Key? key}) : super(key: key);
  English1Document doc;

  @override
  State<English1Reader> createState() => _English1ReaderState();
}

class _English1ReaderState extends State<English1Reader> {
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
