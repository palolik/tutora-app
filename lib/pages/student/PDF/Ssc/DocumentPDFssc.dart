// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class DocumentPDFSsc {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  DocumentPDFSsc({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<DocumentPDFSsc> doc_list = [
    DocumentPDFSsc(
      title: "Vector",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2F1.pdf?alt=media&token=a0b40048-d79b-4366-bb9a-f2a2f1987976",
      docDate: "2-2-2-22",
    ),
    DocumentPDFSsc(
      title: "Work,Power and Energy",
      docUrl:
          "https://files.rahatbiamooz.ir/downloads/files/madreseh/takmili/pdf/flutter20.pdf",
      docDate: "2-2-2-22",
    ),
    DocumentPDFSsc(
      title: "Wave",
      docUrl:
          "https://drive.google.com/file/d/1IENY-z_fu9H-P4UMZJdINREHxToKfa7t/view?usp=sharing",
      docDate: "2-2-2-22",
    ),
    DocumentPDFSsc(
      title: "Newtonian Mechanics",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2F1.pdf?alt=media&token=a0b40048-d79b-4366-bb9a-f2a2f1987976",
      docDate: "2-2-2-22",
    ),
    DocumentPDFSsc(
      title: "Vector",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2F1.pdf?alt=media&token=a0b40048-d79b-4366-bb9a-f2a2f1987976",
      docDate: "2-2-2-22",
    ),
  ];
}
