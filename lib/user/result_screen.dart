import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final String text;
  const ResultScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescription for Medicine'),
        backgroundColor: Color(0xff263077)
      ),
      body:SingleChildScrollView(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          padding: const EdgeInsets.all(30.0),
          child: Text(text),
        )
      ],) ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:(){

        },
        child: Icon(Icons.send),

      ),
    );
  }
}
