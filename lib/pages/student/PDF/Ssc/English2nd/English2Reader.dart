import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Ssc/English2nd/English2Document.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class English2Reader extends StatefulWidget {
  English2Reader(this.doc, {Key? key}) : super(key: key);
  English2Document doc;

  @override
  State<English2Reader> createState() => _English2ReaderState();
}

class _English2ReaderState extends State<English2Reader> {
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
