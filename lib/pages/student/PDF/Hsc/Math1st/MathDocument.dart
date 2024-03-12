// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class MathDocument {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  MathDocument({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<MathDocument> doc_list = [
    MathDocument(
      title: "ম্যাট্রিক্স ও নির্ণায়ক",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-1.pdf?alt=media&token=4df0036f-28a1-47db-8b88-30c683217def",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "ভেক্টর",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-2.pdf?alt=media&token=08a2ad3c-87e6-4c4a-bc23-ff760e6f9c55",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "সরলরেখা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-3.pdf?alt=media&token=f9b0758c-d7c3-4ea9-bd74-1b031dbe710d",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "বৃত্ত",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-4.pdf?alt=media&token=184376df-14e3-4da6-baab-71304b08af1b",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "বিন্যাস ও সমাবেশ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-5.pdf?alt=media&token=b07de657-547b-4d61-adb5-4ce353b9d6bf",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-5.pdf?alt=media&token=b07de657-547b-4d61-adb5-4ce353b9d6bf",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "ফাংশন ও ফাংশনের লেখচিত্র",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-8.pdf?alt=media&token=e76f13fe-e337-495a-838b-bb65ea08a098",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "অন্তরীকরণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-9.pdf?alt=media&token=20541948-988c-49fa-aac2-8ee02e522f5f",
      docDate: "2-2-2-22",
    ),
    MathDocument(
      title: "যোগজীকরণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FHigher%20Math%201st%20Paper%2Fhm-10.pdf?alt=media&token=131f2312-d357-4755-88af-94ebbe7f1ef8",
      docDate: "2-2-2-22",
    ),
  ];
}
