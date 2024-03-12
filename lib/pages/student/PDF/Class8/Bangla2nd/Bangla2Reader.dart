import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Class8/Bangla2nd/Bangla2Document.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Bangla2Reader extends StatefulWidget {
  Bangla2Reader(this.doc, {Key? key}) : super(key: key);
  Bangla2Document doc;

  @override
  State<Bangla2Reader> createState() => _Bangla2ReaderState();
}

class _Bangla2ReaderState extends State<Bangla2Reader> {
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
