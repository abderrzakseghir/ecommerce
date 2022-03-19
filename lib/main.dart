import 'package:ecommerce/view/log_in/log_in.dart';
import 'package:ecommerce/view/log_in/login_details.dart';
import 'package:ecommerce/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/sizeconfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplaashScreenonne(),
    );
  }
}
