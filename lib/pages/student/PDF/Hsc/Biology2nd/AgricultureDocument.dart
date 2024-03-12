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
      title: "প্রাণীর বিভিন্নতা ও শ্রেণিবিন্ন্যাস",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%201.pdf?alt=media&token=851138b5-8f4b-40ff-8fcc-fdebfb304093",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "প্রাণির পরিচিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%20%202.pdf?alt=media&token=af1b4761-9b2b-48be-8dc6-436cb45131ce",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "পরিপাক ও শোষণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%203.pdf?alt=media&token=2606f4f5-fb1b-42e4-9776-9d579807a7d7",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "রক্ত ও সংবহন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%204.pdf?alt=media&token=e1fb7fc0-0c97-4d1e-94e4-66bb4274adef",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "শ্বসন ও শ্বাসক্রিয়া",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%205.pdf?alt=media&token=08f6c47c-52c3-422e-9a60-0ad5b289fd54",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "বর্জ্য ও নিষ্কাশন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%206.pdf?alt=media&token=9bc56d4b-2b11-4d3d-af92-0ad1e4c00d4d",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "চলন ও অঙ্গচালনা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%207.pdf?alt=media&token=f3a89592-e056-47b9-887b-4bea33bbfe07",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "মানব শরীরতত্ত্ব",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%208.pdf?alt=media&token=99dc308b-eb9d-490a-bf0d-9e0b05669cf5",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "মানবজীবনের ধারাবাহিকতা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%209.pdf?alt=media&token=7c0edd25-b0dd-4184-a00d-e7e837c191ba",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "মানবদেহের প্রতিরক্ষা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%2010.pdf?alt=media&token=8da1b14f-4ad3-4c3e-aa2e-c12663c0d613",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "জীন্ততত্ত্ব ও বিবর্তন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio11.pdf?alt=media&token=b3f08094-8c80-4270-8e2b-98c6bb942cfb",
      docDate: "2-2-2-22",
    ),
    AgricultureDocument(
      title: "প্রাণীর আচরণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass11%2FBiology%202nd%20Paper%2Fbio%2012.pdf?alt=media&token=1abe9b61-c995-4520-859a-b18958bd3e3b",
      docDate: "2-2-2-22",
    ),
  ];
}
