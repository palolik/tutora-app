import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Class7/DocumentPdf7.dart';
import 'package:Tutora/pages/student/PDF/Class7/ReaderScreen7.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class PdfView extends StatefulWidget {
  @override
  _PdfView createState() => _PdfView();
}

class _PdfView extends State<PdfView> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter PDF Viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Recent Documents"),
              Column(
                children: DocumentPDF7.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(ReaderScreen7(doc));
                          },
                          leading: Icon(Icons.picture_as_pdf),
                          title: Text(
                            doc.title!,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text("${doc.pageNo} Pages"),
                          trailing: Text(doc.docDate!),
                        ))
                    .toList(),
              ),
            ],
          ),
        )));
  }
}
