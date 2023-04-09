import 'package:flutter/material.dart';
import './user/Medicine_details.dart';
import 'Screens/sign_in.dart';
import 'Screens/sign_up.dart';
import './user/user_landing.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './user/doctors.dart';
import './user/medicines.dart';
import './user/your_profile.dart';
import './user/Doctor_details.dart';
import './user/video_calling.dart';
import './user/prescription.dart';
import './user/Payment_gateway.dart';
import './user/pay.dart';
import './user/panaramaScreen.dart';
import './user/your_profile.dart';
import './user/doctors.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff263077),
      ),
      home: HomeNavPage(),
      routes: {
        MedicineDetails.routeName: (context)=>MedicineDetails(),
        DoctorDetails.routeName: (context)=>DoctorDetails(),
        CallPage.routeName: (context)=>CallPage(),
        Prescription.routeName: (context)=>Prescription(),
        PaymentGateway.routeName: (context)=>PaymentGateway(),
        Pay.routeName: (context)=>Pay(),
        PanoramaPage.routeName: (context)=>PanoramaPage(),
        YourProfile.routeName: (context)=>YourProfile(),
        Doctors_List.routeName:(context)=>Doctors_List(),
      },
    );
  }
}

class HomeNavPage extends StatefulWidget {
  const HomeNavPage({super.key});

  @override
  State<HomeNavPage> createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage> {
  int _selectedIndex = 0;
  late PageController _pageController;
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;

          });

        },
        children: [
          UserLanding(),
          Doctors_List(),
          Medicines(),
          YourProfile(),

        ],),),

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(),
        color: Color(0xff263077),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),

          child: GNav(

            backgroundColor: Color(0xff263077),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor:
            Color(0xff6F8CA6), //6CA7C8  6F8CA6  8AB9D4  9DBDD4
            padding: EdgeInsets.all(16),
            gap: 6,
            onTabChange: (index) {
              _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.linear);
            },

            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.medical_services,
                text: "Doctors",
              ),
              GButton(icon: Icons.medication_outlined, text: "Medicines"),
              GButton(
                  icon: Icons.medical_information_rounded,
                  text: "Your Profile"),
            ],
          ),
        ),
      ),

    );
  }
}
