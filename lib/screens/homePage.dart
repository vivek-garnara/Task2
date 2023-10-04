import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/offer_item.dart';
// import './model/offerCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEEF4FF),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff0A43B1),
          size: 20,
        ),
        title: const Text(
          "Account - Buy Credits",
          style: TextStyle(color: Color(0xff0A43B1), fontSize: 16),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: const Text(
              "Buy the credits of your choice",
              style: TextStyle(color: Color(0xff303030)),
            ),
          ),
          Container(
            height: 350,
            child: ListView(
              children: DUMMY_OFFERCARDS
                  .map((offerData) => OfferItem(
                      offerData.offerText,
                      offerData.price1,
                      offerData.price2,
                      offerData.offAmount,
                      offerData.quantity))
                  .toList(),
            ),
          ),
          Container(
            child: Column(
              children: [
                const Icon(
                  Icons.keyboard_double_arrow_down_rounded,
                  color: Color(0xff303030),
                ),
                const Divider(
                  indent: 40,
                  endIndent: 40,
                  thickness: 1,
                  color: Color(0xffa7a7a7),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: "Total Credits:",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff909090)),
                              children: [
                            TextSpan(
                                text: " 5",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff303030),
                                    fontWeight: FontWeight.w500))
                          ])),
                      RichText(
                          text: const TextSpan(
                              text: "Total Amount:",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff909090)),
                              children: [
                            TextSpan(
                                text: " \$965",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff303030),
                                    fontWeight: FontWeight.w500))
                          ]))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff0A43B1),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Text("Proceed To Payment",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
