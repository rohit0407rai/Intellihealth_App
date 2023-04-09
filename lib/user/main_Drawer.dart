import 'package:flutter/material.dart';
import './panaramaScreen.dart';
import './your_profile.dart';
class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child:Column(
                children:[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/insurance.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text('Rohit Rai',style: TextStyle(fontSize: 22,color: Colors.white),),
                  SizedBox(height: 5,),
                  Text('rohit0407rai@gmail.com',style: TextStyle(color: Colors.white),)
                ]
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',style: TextStyle(fontSize: 18),),
            onTap: (){
              Navigator.of(context).popAndPushNamed(YourProfile.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.preview),
            title: Text('Prescription',style: TextStyle(fontSize: 18),),
            onTap: (){
              Navigator.of(context).pushNamed('/prescription');
            },
          ),
          ListTile(
            leading: Icon(Icons.video_camera_back),
            title: Text('Virtual Checkup',style: TextStyle(fontSize: 18),),
            onTap: (){
            Navigator.of(context).pushNamed(PanoramaPage.routeName);
            },

          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout',style: TextStyle(fontSize: 18),),
            onTap: null,
          ),

        ],
      )
    );
  }
}
