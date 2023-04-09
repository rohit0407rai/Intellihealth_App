import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List imageList = [
    "assets/images/dr1.jpg",
    "assets/images/dr3.jpg",
  ];
  List qoutes = [
    "Consult with the best doctors in the world",
    "Get the best treatment for your health"
  ];
  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 12 : 8,
      width: isSelected ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : Colors.grey,
      ),
    );
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Stack(
                children: [Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff263077),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: PageView.builder(onPageChanged: (value) {
                      setState(() {
                        currentIndex = value%imageList.length;
                      });
                    }, itemBuilder: (context, index) {
                      return Column(children: [
                        Container(
                            height: 300,
                            child: Image.asset(
                              imageList[index % imageList.length],
                            )),
                        Text(qoutes[index % qoutes.length],
                            style: TextStyle(color: Colors.white, fontSize: 20)),

                      ]);
                    }),
                  ),
                ),
                  Container(
                    margin: EdgeInsets.only(top: 400),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < imageList.length; i++)
                          buildIndicator(i == currentIndex)
                      ],
                    ),
                  ),
                ]
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: Center(child: Text_Style("Sign In")),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextField_1("Email", "Email", Icons.email),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextField_1("Password", "Password", Icons.password),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff263077)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xff263077)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Sign In")),
            ),
          ],
        ));
  }
}
