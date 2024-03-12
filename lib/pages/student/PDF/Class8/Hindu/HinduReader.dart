import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Class8/Hindu/HinduDocument.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HinduReader extends StatefulWidget {
  HinduReader(this.doc, {Key? key}) : super(key: key);
  HinduDocument doc;

  @override
  State<HinduReader> createState() => _HinduReadertate();
}

class _HinduReadertate extends State<HinduReader> {
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
