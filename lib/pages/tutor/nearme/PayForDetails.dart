import 'package:flutter/material.dart';
import 'package:Tutora/pages/tutor/CongratsTeacher.dart';
import 'package:Tutora/pages/tutor/nearme/TutionNearMe.dart';

class PayForDetails extends StatefulWidget {
  PayForDetails({Key? key}) : super(key: key);

  @override
  State<PayForDetails> createState() => _PayForDetailsState();
}

class _PayForDetailsState extends State<PayForDetails> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Please Pay 500 taka ",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "to know the details",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Bkash : 01785871932",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Nagad : 01785871932",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Rocket : 01785871932",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Copy the transaction id here",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Transaction Id"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      color: Colors.red),
                  child: TextButton(
                      style:
                          TextButton.styleFrom(fixedSize: const Size(180, 50)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CongratsTeacher()));
                      },
                      child: Text(
                        "Pay",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
