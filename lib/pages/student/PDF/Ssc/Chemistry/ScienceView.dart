import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Ssc/Chemistry/ScienceDocument.dart';
import 'package:Tutora/pages/student/PDF/Ssc/Chemistry/ScienceReader.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class ScienceView extends StatefulWidget {
  @override
  _ScienceView createState() => _ScienceView();
}

class _ScienceView extends State<ScienceView> {
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
                children: ScienceDocument.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(ScienceReader(doc));
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
