import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
import 'dart:math' as math;
import './utils.dart';
final String localUserID= math.Random().nextInt(1000).toString();

// class VideoCallingState extends StatelessWidget {
//
//   static const routeName= '/videoCalling';
//   final callingId=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final sk=ModalRoute.of(context)?.settings.arguments as Map<String, String>;
//     String callingI= sk['name'] as String;
//     return Scaffold(
//       body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextFormField(
//             controller: callingId,
//             decoration: InputDecoration(
//                 hintText: "Enter Call id",
//                 border: OutlineInputBorder()
//             ),
//           ),
//           SizedBox(height: 40,),
//           ElevatedButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>CallPage(callingId: callingId.text.toString())));
//           }, child: Text("Join"))
//         ],
//       ),
//       )
//     );
//   }
// }
class CallPage extends StatelessWidget {
   // final String callingId;
  static const routeName= '/videoCalling';
  const CallPage({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sk=ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String callingI= sk['name'] as String;
    return SafeArea(child: ZegoUIKitPrebuiltCall(
      appID: Utils.appId,
      appSign:Utils.appSignin ,
      callID:localUserID ,
      userID:localUserID ,
      userName:"doctor_${localUserID}" ,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom=(context){Navigator.pop(context);},
    )
    );
  }
}
