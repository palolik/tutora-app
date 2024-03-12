import 'package:Tutora/pages/student/PDF/Hsc/Biology2nd/AgricultureDocument.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Biology2nd/AgricultureReader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class AgricultureView extends StatefulWidget {
  @override
  _AgricultureView createState() => _AgricultureView();
}

class _AgricultureView extends State<AgricultureView> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('প্রাণিবিজ্ঞানের অধ্যায়সমূহ'),
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
                children: AgricultureDocument.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(AgricultureReader(doc));
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
