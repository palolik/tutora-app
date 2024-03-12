// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class ScienceDocument {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  ScienceDocument({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<ScienceDocument> doc_list = [
    ScienceDocument(
      title: "পরিবেশ রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%201st%20Paper%2Fch-1.pdf?alt=media&token=26870bc6-8589-4329-9b5e-b4c419a41782",
      docDate: "2-2-2-22",
    ),
    ScienceDocument(
      title: "গুণগত রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%201st%20Paper%2Fch-2.pdf?alt=media&token=bb35ae50-d070-4fd2-a34e-8122f71c7891",
      docDate: "2-2-2-22",
    ),
    ScienceDocument(
      title: "মৌলের পর্যায়বৃত্ত ধর্ম ও রাসায়নিক বন্ধন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%201st%20Paper%2Fch-3.pdf?alt=media&token=031f54dc-9dbb-4d42-b2ab-31eeb887215f",
      docDate: "2-2-2-22",
    ),
    ScienceDocument(
      title: "রাসায়নিক পরিবর্তন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%201st%20Paper%2Fch-4.pdf?alt=media&token=0b174f28-d806-4527-8f97-6d66c211ebeb",
      docDate: "2-2-2-22",
    ),
    ScienceDocument(
      title: "কর্মমুখী রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%201st%20Paper%2Fch-5.pdf?alt=media&token=8a6a30b2-f3e7-493c-abc8-432c6a407642",
      docDate: "2-2-2-22",
    ),
  ];
}
