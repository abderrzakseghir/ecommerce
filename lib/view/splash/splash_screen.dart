import 'package:ecommerce/constants.dart';
 
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

 
import '../onBoarding/onboarding_screen.dart';
class SplaashScreenonne extends StatefulWidget {
  const SplaashScreenonne({ Key? key }) : super(key: key);

  @override
  State<SplaashScreenonne> createState() => _SplaashScreenonneState();
}

class _SplaashScreenonneState extends State<SplaashScreenonne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EasySplashScreen(logo: Image.asset("assets/images/splash_view_image.png"),
            durationInSeconds: 3,
            title: Text("Fruit Market",style: TextStyle(fontSize: 51,color: Colors.white,fontFamily: 'Poppons',fontWeight: FontWeight.bold),),
          navigator:    SplashScreen(),
          backgroundColor:  KMainColor, 
            
            
            ),
    );
  }
}