import 'package:flutter/material.dart';
import '../user/Doctor_details.dart';
class DoctorCard extends StatelessWidget {
  final int id;
  final String name;
  final double rating;
  final String about;
  final int experience;
  final List<String> degrees;
  final int numberOfPatients;
  final bool isActive;
  final String speciality;
  DoctorCard( {
    required this.id,
    required this.name,
    required this.rating,
    required this.about,
    required this.experience,
    required this.degrees,
    required this.numberOfPatients,
    required this.isActive,
    required this.speciality,

  });


  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: (){
        Navigator.of(context).pushNamed(DoctorDetails.routeName,arguments: {
          'id': id.toString(),
          'name':name,
          'rating':rating.toString(),
          'about': about,
          'experience': experience.toString(),
          'numberofPatients': numberOfPatients.toString(),
          'speciality':speciality,
        });
        },
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
                  "assets/images/dcr.jpg",
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
                    name,
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Text(
                    degrees[0],
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),

                ],
              )
          )
        ],
      ),
    ));

  }
}
