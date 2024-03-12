// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class AgricultureDocument {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  AgricultureDocument({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<AgricultureDocument> doc_list = [
    AgricultureDocument(
      title: "জীবন পাঠ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-1.pdf?alt=media&token=f2c87551-ec40-49b2-a67f-4de15d23022a",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবকোষ ও টিস্যু",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-2.pdf?alt=media&token=7f973be5-69c5-4da8-b8b7-7937ddd94f6b",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "কোষ বিভাজন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-3.pdf?alt=media&token=3b96e81a-aae1-44a3-a737-85044964a581",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবনীশক্তি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-4.pdf?alt=media&token=35d1cee7-c6f3-46ba-9ce3-87b71e552f45",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "খাদ্য,পুষ্টি ও পরিপাক",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-5.pdf?alt=media&token=3266d5e0-cac1-438b-8762-b020f43ca07f",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবে পরিবহন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-6.pdf?alt=media&token=fe9fb1c4-1fa5-4e65-aa28-a73305ca5d02",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "গ্যাসীয় বিনিময়",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-7.pdf?alt=media&token=8a6a138f-4266-4e0b-9941-75118741dfc6",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "মানব রেচন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-8.pdf?alt=media&token=0f966066-67a3-4cb0-816e-38042b2eee9e",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "Vector",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-9.pdf?alt=media&token=2022754e-67cb-41e2-add1-b95d1eddcf3c",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "Vector",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-10.pdf?alt=media&token=757c6c87-7659-4d5c-bee3-17aa31eb1a2c",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবের প্রজনন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-11.pdf?alt=media&token=a15ade4c-ff82-442b-b61a-82ea73839c22",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবের বংশগতি ও বিবর্তন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-12.pdf?alt=media&token=68ca0ca5-8a2d-4cb5-bc54-4aef0c98da06",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবের পরিবেশ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-13.pdf?alt=media&token=b2a50e8a-24ff-4d7f-bb1b-4a99255bb07d",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীবপ্রযুক্তি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fbiology%2FBL-14.pdf?alt=media&token=bfe0f45c-9641-4bcd-8217-36133a9224db",
      docDate: "2-2-2-22",
    ),
  ];
}
