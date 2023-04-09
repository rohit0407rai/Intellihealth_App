import 'package:flutter/material.dart';
import './image_picker.dart';
import './Payment_gateway.dart';
class MedicineDetails extends StatefulWidget {
  static const routeName = '/medicineDetails';
  const MedicineDetails({super.key});

  @override
  State<MedicineDetails> createState() => _MedicineDetailsState();
}

class _MedicineDetailsState extends State<MedicineDetails> {
  @override
  Widget build(BuildContext context) {
    final sk =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String medicineName= sk['name'] as String;
    String medicineContent= sk['content'] as String;
    String companyName= sk['companyName'] as String;
    String id= sk['id'] as String;
    String price=sk['price'] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(medicineName),
        backgroundColor: Color(0xff263077),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:    AssetImage('assets/images/medicine.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                medicineContent,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Rs. ${price}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff263077),
              ),
            ),
            SizedBox(height: 20),


            ElevatedButton(
              onPressed: () {
            Navigator.of(context).pushNamed(PaymentGateway.routeName,arguments: {
              "price":price,
            });
              },
              child: Text('Buy Now'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff263077),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
