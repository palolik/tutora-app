import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/student/PDF/Ssc/Physics/PhysicsDocument.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PhysicsReader extends StatefulWidget {
  PhysicsReader(this.doc, {Key? key}) : super(key: key);
  PhysicsDocument doc;

  @override
  State<PhysicsReader> createState() => _MathReaderState();
}

class _MathReaderState extends State<PhysicsReader> {
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
