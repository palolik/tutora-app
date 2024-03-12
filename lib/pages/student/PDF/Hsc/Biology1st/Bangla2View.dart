import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Biology1st/Bangla2Document.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Biology1st/Bangla2Reader.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class Bangla2View extends StatefulWidget {
  @override
  _Bangla2View createState() => _Bangla2View();
}

class _Bangla2View extends State<Bangla2View> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('উদ্ভিদবিজ্ঞানের অধ্যায়সমূহ'),
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
                children: Bangla2Document.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(Bangla2Reader(doc));
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
