// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class PhysicsDocument {
  String? title;
  String? docUrl;
  String? docDate;
  Int? pageNo;
  PhysicsDocument({
    required this.title,
    required this.docUrl,
    required this.docDate,
    this.pageNo,
  });

  static List<PhysicsDocument> doc_list = [
    PhysicsDocument(
      title: "ভৌত রাশি ও পরিমাপ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch1.pdf?alt=media&token=1eb0b81d-94e8-416c-b48a-5c1adce510e8",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "গতি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch2.pdf?alt=media&token=fd401449-9c24-47f5-a07b-fe2bb0560816",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "বল",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch3.pdf?alt=media&token=68ffd544-f389-4468-82a3-fb13a447c1fc",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "কাজ,ক্ষমতা ও শক্তি",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch4.pdf?alt=media&token=f5c7fd7c-6398-480e-ba45-7edaabfa082b",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "পদার্থের অবস্থা ও চাপ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch5.pdf?alt=media&token=a26959ae-5167-40b5-8b36-8b348146f793",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "বস্তুর উপর তাপের প্রভাব",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch6.pdf?alt=media&token=27a3fc4f-6caa-466f-bf51-37cde4526bd1",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "তরঙ্গ ও শব্দ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch7.pdf?alt=media&token=7e65e6ca-232a-4d0e-8a14-f29647672060",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "আলোর প্রতিফলন",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch8.pdf?alt=media&token=8f90b45e-34a7-4eea-b437-af8516758718https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch5.pdf?alt=media&token=a26959ae-5167-40b5-8b36-8b348146f793",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "আলোর প্রতিসরণ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch9.pdf?alt=media&token=36d4e442-75b7-45d7-ba05-3644190ae935",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "স্থির তড়িৎ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch10.pdf?alt=media&token=7a0220f8-636f-4834-b7e4-5b82ee9eb6d5",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "চলতড়িৎ",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch11.pdf?alt=media&token=34aa6404-6e1c-455d-bf08-54e8af292911",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "তড়িতের চৌম্বক ক্রিয়া",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch12.pdf?alt=media&token=c12e88f8-5b92-4b2f-ad7f-04180d64962a",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "আধুনিক পদার্থবিজ্ঞান ও ইলেকট্রনিক্স",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch13.pdf?alt=media&token=7bbd59f7-9910-4649-b518-ea7bfa1da69c",
      docDate: "2-2-2-22",
    ),
    PhysicsDocument(
      title: "জীবন বাচাতে পদার্থবিজ্ঞান",
      docUrl:
          "https://firebasestorage.googleapis.com/v0/b/workplease-19076.appspot.com/o/pdfs%2Fclass10%2Fphysics%2FPhysics-ch14.pdf?alt=media&token=0ec09092-1639-4704-b7c1-929596581d0c",
      docDate: "2-2-2-22",
    ),
  ];
}
