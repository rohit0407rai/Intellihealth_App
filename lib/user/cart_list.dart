import 'package:flutter/material.dart';
class CartItemList extends StatefulWidget {
  const CartItemList({Key? key}) : super(key: key);

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  List<dynamic> carselectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart List'),
        backgroundColor: Color(0xff263077),
      ),
      body: ListView.builder(
        itemCount: carselectedItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(carselectedItems[index]),
            ),
          );
        },
      ),
    );
  }
}
