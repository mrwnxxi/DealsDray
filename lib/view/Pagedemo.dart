import 'package:dealsdray/view/landingpage.dart';
import 'package:dealsdray/view/loginpage.dart';
import 'package:dealsdray/view/otpscreen.dart';
import 'package:dealsdray/view/registration.dart';
import 'package:dealsdray/view/splash.dart';
import 'package:flutter/material.dart';
class Pagedemo extends StatelessWidget {
  Pagedemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("NavigationPage"),

      ),
      body: Center(child: Column(
        children: [
          SizedBox(height: 30,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));}, child: Text("SplashPage")),
          SizedBox(height: 30,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}, child: Text("Login")),
          SizedBox(height: 30,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));}, child: Text("Register")),
          SizedBox(height: 30,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingPage()));}, child: Text("Landing Page")),
          SizedBox(height: 30,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));}, child: Text("OTP screen")),
        ],
      )),
    );
  }
}
