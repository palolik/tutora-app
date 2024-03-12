// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class Bangla2Document {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  Bangla2Document({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<Bangla2Document> doc_list = [
    Bangla2Document(
      title: "সেট ও ফাংশন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-1.pdf?alt=media&token=b0806ae9-fefb-43dc-95c9-b32763985885",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "বীজগাণিতিক রাশি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-2.pdf?alt=media&token=f2aa4bdd-48c8-48a7-bea2-bd3a47e2f7cc",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "জ্যামিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-3.pdf?alt=media&token=747eac85-d936-4497-87b7-93fe02c45dc2",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "জ্যামিতিক অঙ্কন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-4.pdf?alt=media&token=61fb954d-d4a3-4546-8eec-db30788d97e0",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "সমীকরণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-5.pdf?alt=media&token=b722ec80-a0cd-4f6c-96e5-813104ac142b",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "অসমতা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-6.pdf?alt=media&token=bd840712-7651-4eca-89ac-0cc7c1231f5b",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "অসীম ধারা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-7.pdf?alt=media&token=0657dcbb-83ed-41a6-b781-1e551bd10c4b",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "ত্রিকোণমিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-8.pdf?alt=media&token=417b6360-69ea-4e19-8642-398a15786bfc",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "সূচকীয় ও লগারিদমীয় ফাংশন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-9.pdf?alt=media&token=1b251e76-cfb8-4913-9628-507693e9b53b",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "দ্বিপদী বিস্তৃতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-10.pdf?alt=media&token=be071bfa-00ff-42fd-9c74-ac632f0d9381",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "স্থানাংক জ্যামিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-11.pdf?alt=media&token=8e69ea83-2fb6-4417-8b45-00773cb114f7",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "সমতলীয় ভেক্টর",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-12.pdf?alt=media&token=b531e7c1-b33b-438f-97dd-caeb70016002",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "ঘন জ্যামিতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-13.pdf?alt=media&token=f39d42bb-a95c-4105-9687-a16989ba9b91",
      docDate: "2-2-2-22",
    ),
    Bangla2Document(
      title: "সম্ভাবনা",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fhighermath%2FHM-14.pdf?alt=media&token=54fbb203-88c0-477e-b25e-52aac311dedc",
      docDate: "2-2-2-22",
    ),
  ];
}
