import 'dart:convert';
import 'dart:io';
import '../model/medicine_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './Medicine_details.dart';
import '../model/medicine_model.dart';

class Medicines extends StatefulWidget {
  static const routeName='/medicines';
  const Medicines({super.key});

  @override
  State<Medicines> createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  List<Data> medicineList = dataList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicines'),
        backgroundColor: Color(0xff263077),
      ),
      body: ListView.builder(
          itemBuilder: ((context, index) {

            return InkWell(
              onTap:(){
                Navigator.of(context).pushNamed(MedicineDetails.routeName,arguments: {
                  'name':medicineList[index].name,
                  'content':medicineList[index].content,
                  'companyName':medicineList[index].companyName,
                  'id':medicineList[index].id.toString(),
                  'price':medicineList[index].price.toString(),
                });
              },
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/medicine.png'),
                    title: Text(medicineList[index].name),
                    subtitle: Text(medicineList[index].companyName),
                    trailing: Text('Rs. ${medicineList[index].price*20}'),

                  ),
                  Divider()
                ],
              ),
            );

          }),
          itemCount: medicineList.length),


    );
  }



}
