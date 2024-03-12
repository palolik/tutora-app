import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math2nd/English1Document.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math2nd/English1Reader.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class English1View extends StatefulWidget {
  @override
  _English1View createState() => _English1View();
}

class _English1View extends State<English1View> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('উচ্চতর গণিত ২য় পত্রের অধ্যায়সমূহ'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
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
                children: English1Document.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(English1Reader(doc));
                          },
                          leading: Icon(Icons.picture_as_pdf),
                          iconColor: Color.fromARGB(255, 255, 0, 0),
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
