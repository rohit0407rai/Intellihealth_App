import 'package:flutter/material.dart';
class YourProfile extends StatefulWidget {
static const routeName="/_profile";
  const YourProfile({super.key});

  @override
  State<YourProfile> createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile'),
        backgroundColor: Color(0xff263077),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff263077),


                ),
                child:Image.asset('assets/images/blue.jpg',fit: BoxFit.cover,),
              ),
              Stack(children: [
                Padding(padding: EdgeInsets.symmetric(horizontal:22),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/dccr.jpg'),
                  ),
                ) ,
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Color(0xff263077),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],),
              Positioned(
                top:10,
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      color: Color(0xff263077),
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],),
            Padding(padding: EdgeInsets.only(left:22),
              child:Text(
                'Rohit Rai',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff263077),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 22),
              margin: EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff263077),
                ),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Column(
                children:[
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children:[
                      Padding(padding: EdgeInsets.only(left:1),
                      child: Icon(Icons.bloodtype,color: Colors.red,size: 30,),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text('RBC Count',style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff263077),
                        fontWeight: FontWeight.bold,
                      ),),
                    ]
                  ),
                  Divider(thickness: 1, color: Color(0xff263077),),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children:[
                      Padding(padding: EdgeInsets.only(left:1),
                        child: Text('6.9 gm/dl',style:TextStyle(color: Colors.red, fontSize: 20))
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text('4.0-6.0 gm/dl',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff263077),
                        fontWeight: FontWeight.bold,
                      ),),
                    ]
                  ),

                ]
              )
            ),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff263077),
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    children:[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                              child: Icon(Icons.square,color: Colors.red,size: 30,),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text('Sugar',style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),
                      Divider(thickness: 1, color: Color(0xff263077),),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                                child: Text('999 mg/dl',style:TextStyle(color: Colors.red, fontSize: 20))
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text('100-125 mg/dl',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                    ]
                )
            ),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff263077),
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    children:[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                              child: Icon(Icons.bloodtype_sharp,color: Colors.green,size: 30,),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text('Haemoglobin',style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),
                      Divider(thickness: 1, color: Color(0xff263077),),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                                child: Text('11.7 gm/dl',style:TextStyle(color: Colors.green, fontSize: 20))
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text('11-14 mg/dl',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                    ]
                )
            ),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff263077),
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    children:[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                              child: Icon(Icons.line_weight,color: Colors.green,size: 30,),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Text('BMI',style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),
                      Divider(thickness: 1, color: Color(0xff263077),),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                                child: Text('20.5',style:TextStyle(color: Colors.green, fontSize: 20))
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text('18.5-25',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                    ]
                )
            ),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff263077),
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    children:[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                              child: Icon(Icons.favorite_outline_sharp,color: Colors.green,size: 30,),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text('Cholestrol',style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),
                      Divider(thickness: 1, color: Color(0xff263077),),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                                child: Text('175 mg/dl',style:TextStyle(color: Colors.green, fontSize: 20))
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text('200-239 mg/dl',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                    ]
                )
            ),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff263077),
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    children:[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                              child: Icon(Icons.disc_full_rounded,color: Colors.green,size: 30,),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text('Platelet',style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),
                      Divider(thickness: 1, color: Color(0xff263077),),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          children:[
                            Padding(padding: EdgeInsets.only(left:1),
                                child: Text('2.38 lacs/cmm',style:TextStyle(color: Colors.green, fontSize: 20))
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text('1.5-4.0 ',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff263077),
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                    ]
                )
            )


          ],
        ),
      )
    );
  }
}
