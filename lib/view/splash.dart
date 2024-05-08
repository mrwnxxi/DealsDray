import 'package:dealsdray/WebServices.dart';
import 'package:dealsdray/view/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/view/Pagedemo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    await sendDeviceData();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          child:
          // Text("SplashScreen",style: TextStyle(fontSize: 24,color: Colors.black,
          //     fontWeight: FontWeight.bold),),
          ListView(
            children: [
              // Image.asset("assets/svg/l1.png",),
              Image.asset("assets/svg/l2.png"),
              Image.asset("assets/svg/l3.png"),
            ],
          )
        ),
      ),
    );
  }
}
