// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class English2Document {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  English2Document({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<English2Document> doc_list = [
    English2Document(
      title: "পরিবেশ রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%202nd%20Paper%2Fch-1.pdf?alt=media&token=5b4a0e37-b52a-4fba-932f-b534d593d900",
      docDate: "2-2-2-22",
    ),
    English2Document(
      title: "জৈব রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%202nd%20Paper%2Fch-2.pdf?alt=media&token=63a3b61d-cf07-4409-96e1-0ce1daaf6d10",
      docDate: "2-2-2-22",
    ),
    English2Document(
      title: "পরিমাণগত রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%202nd%20Paper%2Fch-3.pdf?alt=media&token=8beb9312-bf8e-4556-aa65-9cf3289a5a88",
      docDate: "2-2-2-22",
    ),
    English2Document(
      title: "তড়িৎ রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%202nd%20Paper%2Fch-4.pdf?alt=media&token=4ff1111c-dc60-479c-b901-749f6aa89313",
      docDate: "2-2-2-22",
    ),
    English2Document(
      title: "অর্থনৈতিক রসায়ন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FChemistry%202nd%20Paper%2Fch-5.pdf?alt=media&token=df0a3268-ce15-47e7-8589-b515dc930a62",
      docDate: "2-2-2-22",
    ),
  ];
}
