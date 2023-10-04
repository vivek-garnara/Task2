import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  Widget _inputFild(title) {
    return title == "DOB"
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: title,
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: Icon(Icons.date_range_rounded)),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: title,
                labelStyle: TextStyle(
                  fontSize: 14,
                ),
                // suffixIcon: SwitchListTile(
                //   value: false,
                //   onChanged: (value) {},
                // )
              ),
            ),
          );
  }

  Widget _texts(number, text) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: number,
          style: TextStyle(
              color: Color(0xff303030),
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: "Poppins"),
          children: [
            TextSpan(
                text: "\n$text",
                style: TextStyle(
                    color: Color(0xff909090),
                    fontSize: 12,
                    fontFamily: "Poppins"))
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 225,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    "assets/images/bg_img.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff0A43B1),
                    size: 20,
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          color: Color(0xff0A43B1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Container(
                    padding: EdgeInsets.only(left: 13),
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          offset: Offset(0, 2),
                          blurRadius: 5)
                    ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(right: 15),
                              child: Image.asset(
                                "assets/images/profile_img.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            _texts("Sheetal Sharma", "Pune, Maharashtra"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _texts("2000", "Followers"),
                            _texts("2000", "Following"),
                            _texts("3.25", "Rated"),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Accounts Settings",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _inputFild("Name"),
              _inputFild("Email"),
              _inputFild("Phone"),
              _inputFild("DOB"),
              _inputFild("Gender"),
              _inputFild("Status"),
              _inputFild("City"),
            ],
          ),
        ],
      ),
    );
  }
}
