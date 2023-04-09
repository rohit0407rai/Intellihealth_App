import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/list_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './main_Drawer.dart';
import './doctors.dart';
import './Medicines.dart';


class UserLanding extends StatefulWidget {
  const UserLanding({super.key});

  @override
  State<UserLanding> createState() => _UserLandingState();
}

class _UserLandingState extends State<UserLanding> {
  var _selectIcon = Icons.search;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff263077),
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer());
        }),
        actions: [
          IconButton(
              icon: Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
        title: Text(
          "Welcome Rohit",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(_selectIcon, color: Color(0xff263077)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(color: Color(0xff263077), width: 2),
                    )),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 1,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xff263077),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      print('kamdev');
                    },
                    child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 40),
                          child: Text(
                            'Affordable Checkups at Your Place',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  child: Image.asset(
                                      "assets/images/scope.png",
                                      fit: BoxFit.cover),
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                ),
                                Container(
                                    margin:
                                    EdgeInsets.only(top: 20, left: 10),
                                    child: Text('Checkup',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white)))
                              ],
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  child: Image.asset(
                                      "assets/images/pills.png",
                                      fit: BoxFit.cover),
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                ),
                                Container(
                                    margin:
                                    EdgeInsets.only(top: 20, left: 10),
                                    child: Text('Medicine',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white)))
                              ],
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  child: Image.asset(
                                      "assets/images/surgery.png",
                                      fit: BoxFit.cover),
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                ),
                                Container(
                                    margin:
                                    EdgeInsets.only(top: 20, left: 10),
                                    child: Text('Surgery',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white)))
                              ],
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  child: Image.asset("assets/images/path.png",
                                      fit: BoxFit.cover),
                                  margin: EdgeInsets.only(
                                      top: 20, left: 10, right: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 20, left: 10, right: 20),
                                    child: Text('Pathology',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white)))
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                width: 150,
                                margin: EdgeInsets.only(top: 40),
                                child: Text(
                                  "All insurances accepted & No Cost EMI available",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  maxLines: 2,
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Get Cost Estimate"),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ListFunctionDart("Get",
                                      "assets/images/doctor.png", "Appointment",(){
                                    Navigator.of(context).pushNamed(Doctors_List.routeName);
                                      }),
                                  ListFunctionDart("Instant",
                                      "assets/images/instant.png", "Checkup",(){
                                        Navigator.of(context).pushNamed(Doctors_List.routeName);
                                      }),
                                  ListFunctionDart(
                                      "Surgery", "assets/images/plus_medical.jpg", "",(){}),
                                ],
                              ),
                            ))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ListFunctionDart(
                                        "Medicines",
                                        "assets/images/medicine.png",
                                        "",(){}),
                                    ListFunctionDart("Lab Tests",
                                        "assets/images/labtest.png", "Checkup",(){}),
                                    ListFunctionDart("Insurance",
                                        "assets/images/insurance.png", "",(){}),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      drawer :MainDrawer(),
    );
  }
}
