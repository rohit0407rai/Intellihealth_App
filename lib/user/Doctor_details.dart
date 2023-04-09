import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
import './video_calling.dart';
class DoctorDetails extends StatefulWidget {
  static const routeName = '/doctorDetails';
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context){
  final sk =
  ModalRoute.of(context)?.settings.arguments as Map<String, String>;
  String dcrNam= sk['name'] as String;
  String dcrabout= sk['about'] as String;
  String dcrexperience= sk['experience'] as String;
  String dcrpatents= sk['numberofPatients'] as String;
  String dcrspeciality=sk['speciality'] as String;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff263077),
              title: Text('My Doctors'),
      ),
      body:SingleChildScrollView( child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [



          Container(
            height:400,
           color: Color(0xff263077),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.all(12),
              child: Text('DoctorName:- ${dcrNam}', style: TextStyle(color:Colors.white, fontSize: 20),),
              ),

              SizedBox(height: 20,),
               Container(
                 margin: EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(12)),
                   border: Border.all(color: Colors.white)
                 ),

                 padding: EdgeInsets.all(12),
                 child:Image.asset("assets/images/dcr.jpg",fit: BoxFit.cover,),

               ),
               
                SizedBox(height: 10,),
                Padding(
                    padding: EdgeInsets.all(12),
                    child:Text('Experience:- ${dcrexperience}years', style: TextStyle(color:Colors.white, fontSize: 20),), )
              ],),

            width: double.infinity,),

          SizedBox(height: 2,),
          Padding(padding: EdgeInsets.all(8),
              child: Text("About", style: TextStyle(fontSize: 25),)
          ),

         Padding(padding: EdgeInsets.all(8),
         child: Text("${dcrabout}", style: TextStyle(),)
         ),
          Divider(thickness: 1, color: Colors.grey,),
          Padding(padding: EdgeInsets.all(8),
              child: Text("Speciality", style: TextStyle(fontSize: 22),)
          ),

          Padding(padding: EdgeInsets.all(8),
              child: Text("${dcrspeciality}", style: TextStyle(fontSize: 12), )
          ),
          Divider(thickness: 1, color: Colors.grey,),
        Padding(padding: EdgeInsets.all(8),
            child: Text("Number of Patients", style: TextStyle(fontSize: 20),)
        ),
        Padding(padding: EdgeInsets.all(8),
          child: Text("${dcrpatents}", style: TextStyle(),)),
          Divider(thickness: 1, color: Colors.grey,),
          Padding(padding: EdgeInsets.all(8),
            child:  ElevatedButton(
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
                onPressed: () {

                  showDialog(context: context, builder: (context){
                    return Container(
                      child:Center(child:AlertDialog(
                        title: Text('Your appointment is set with the doctor'),
                        actions: [

                          ElevatedButton(
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
                              onPressed: () {
                                Navigator.of(context).pushNamed(CallPage.routeName,arguments: {
                                  'name': dcrNam,
                                });
                              },
                              child: Text("Start VideoCalling")),
                        ],
                      ),
                    ));
                  });
                },
                child: Text("Get Appointment")),)


        ],
      ),
      ),
    );
  }
}
