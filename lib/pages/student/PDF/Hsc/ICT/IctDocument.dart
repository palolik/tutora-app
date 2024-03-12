// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class IctDocument {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  IctDocument({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<IctDocument> doc_list = [
    IctDocument(
      title: "বিশ্ব ও বাংলাদেশ প্রেক্ষিত",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-01.pdf?alt=media&token=cb8157c4-bbb6-481a-b4f9-c7fdec723fb6",
      docDate: "2-2-2-22",
    ),
    IctDocument(
      title: "কমিউনিকেশন সিস্টেম এবং নেটওয়ার্কিং",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-02.pdf?alt=media&token=15b5dcbc-048d-4a9e-abae-2c151960db8a",
      docDate: "2-2-2-22",
    ),
    IctDocument(
      title: "সংখ্যা পদ্ধতি ও ডিজিটাল ডিভাইস",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-03.pdf?alt=media&token=a1088efa-430e-44e0-92f4-7b915387980d",
      docDate: "2-2-2-22",
    ),
    IctDocument(
      title: "ওয়েব ডিজাইন ও পরিচিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-04.pdf?alt=media&token=abad5a4a-96e8-4451-ba29-a5602ebcf881",
      docDate: "2-2-2-22",
    ),
    IctDocument(
      title: "প্রোগ্রামের ধারণা,অ্যালগরিদম ও ফ্লোচার্ট",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-05.pdf?alt=media&token=e8dc54f2-7839-4c30-96af-29916c3d7b54",
      docDate: "2-2-2-22",
    ),
    IctDocument(
      title: "ডেটাবেজ ম্যানেজমেন্ট সিস্টেম",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FICT%2FObjective%2FICT-06.pdf?alt=media&token=fdf08201-cca6-4a98-a12f-034903712662",
      docDate: "2-2-2-22",
    ),
  ];
}
