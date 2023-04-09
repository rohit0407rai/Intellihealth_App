import 'package:flutter/material.dart';
import '../components/text.dart';
import '../components/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  List listItem = ["Doctor", "Patient"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff263077),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 32),
                child: Text(
                  "Intelli-Health",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset('assets/images/plus_medical.jpg'),
          Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextField_1("Name", "Name", Icons.person)),
          Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextField_1("Email", "Email", Icons.email)),
          Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextField_1("Password", "Password", Icons.email)),

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
                child: Text("SignUp")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an Account?'),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Color(0xff263077)),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
