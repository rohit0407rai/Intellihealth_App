

import 'package:flutter/material.dart';
import '../components/doctor_card.dart';
import '../model/Doctors_model.dart';
class Doctors_List extends StatefulWidget {
  static const routeName="/doctors";
  const Doctors_List({super.key});

  @override
  State<Doctors_List> createState() => _Doctors_ListState();
}

class _Doctors_ListState extends State<Doctors_List> {

 List<Doctor> topDoctors= ENT;
 List<Doctor> cardioDoctors= Cardiologist;
 List<Doctor> dentistDoctors= Dentist;
 List<Doctor> MoreDoctors= neurologist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors List'),
        backgroundColor: Color(0xff263077),
      ),
      body:SingleChildScrollView(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: EdgeInsets.all(12),
          child:Text("Top Doctors", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),),
        

        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topDoctors.length,
              itemBuilder: (context,index){
                return DoctorCard(id:topDoctors[index].id, name: topDoctors[index].name, rating: topDoctors[index].rating, about: topDoctors[index].about, experience:topDoctors[index].experience , degrees: topDoctors[index].degrees, numberOfPatients: topDoctors[index].numberOfPatients, isActive: topDoctors[index].isActive, speciality: topDoctors[index].speciality);
              })),
          SizedBox(height: 5,),
          Divider(thickness: 1,color: Colors.grey,),
          Padding(
            padding: EdgeInsets.all(12),
            child:Text("Top Cardiologist", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),),


          Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topDoctors.length,
                  itemBuilder: (context,index){
                    return DoctorCard(id:cardioDoctors[index].id, name: cardioDoctors[index].name, rating: cardioDoctors[index].rating, about: cardioDoctors[index].about, experience:cardioDoctors[index].experience , degrees: cardioDoctors[index].degrees, numberOfPatients: cardioDoctors[index].numberOfPatients, isActive: cardioDoctors[index].isActive, speciality: cardioDoctors[index].speciality);
                  })),
          SizedBox(height: 5,),
          Divider(thickness: 1,color: Colors.grey),
              Padding(
              padding: EdgeInsets.all(12),
             child:Text("Top Dentist", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),),


           Container(
            height: 200,
               child: ListView.builder(
        scrollDirection: Axis.horizontal,
            itemCount: topDoctors.length,
        itemBuilder: (context,index){
        return DoctorCard(id:Dentist[index].id, name: Dentist[index].name, rating: Dentist[index].rating, about: Dentist[index].about, experience:Dentist[index].experience , degrees: Dentist[index].degrees, numberOfPatients: Dentist[index].numberOfPatients, isActive: Dentist[index].isActive, speciality: Dentist[index].speciality);
        })),
        SizedBox(height: 5,),
        Divider(thickness: 1,color: Colors.grey,),
          Padding(
            padding: EdgeInsets.all(12),
            child:Text("More Doctors", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),),


          Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topDoctors.length,
                  itemBuilder: (context,index){
                    return DoctorCard(id:neurologist[index].id, name: neurologist[index].name, rating: neurologist[index].rating, about: neurologist[index].about, experience:neurologist[index].experience , degrees: neurologist[index].degrees, numberOfPatients: neurologist[index].numberOfPatients, isActive: neurologist[index].isActive, speciality: neurologist[index].speciality);
                  })),
          SizedBox(height: 5,),
          
        ],))
    );
  }
}