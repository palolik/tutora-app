import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/class6/Islam/IslamDocument.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class IslamReader extends StatefulWidget {
  IslamReader(this.doc, {Key? key}) : super(key: key);
  IslamDocument doc;

  @override
  State<IslamReader> createState() => _IslamReaderState();
}

class _IslamReaderState extends State<IslamReader> {
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
