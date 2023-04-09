import 'package:flutter/material.dart';

class Text_Style extends StatelessWidget {
  String text;
  Text_Style(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Color(0xff263077), fontSize: 20));
  }
}
