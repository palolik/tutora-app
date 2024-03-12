import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math1st/MathDocument.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math1st/MathReader.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class MathView extends StatefulWidget {
  @override
  _MathView createState() => _MathView();
}

class _MathView extends State<MathView> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('উচ্চতর গণিত ১ম পত্রের অধ্যায়সমূহ'),
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
              Column(
                children: MathDocument.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Get.to(MathReader(doc));
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
