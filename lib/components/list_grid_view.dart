

import 'package:flutter/material.dart';

class ListFunctionDart extends StatelessWidget {
  String title;
  String image;
  String txl;
  VoidCallback _nextPage;
  ListFunctionDart(this.title, this.image,this.txl,this._nextPage);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _nextPage,
      child:Container(

      margin: EdgeInsets.only(left: 10, right: 10, top: 10, ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

        border: Border.all(color: Colors.black.withOpacity(0.4)),
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 130,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                color: Color(0xff263077)
            ),
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 120,
                  width: 130,
                ),
              ),
            ]),
          ),
          Divider(
            color: Colors.black.withOpacity(0.4),
            thickness: 1,
          ),
          Container(
              child: Column(
                children: [
                  Text(
                    title,
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Text(
                    txl,
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),

                ],
              )
          )
        ],
      ),
    ) ,);
  }
}
