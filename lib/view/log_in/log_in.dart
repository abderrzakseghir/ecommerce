import 'package:ecommerce/model/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_details.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 189, 177, 177),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
            child: Column(children: [
              SizedBox(
                height: getHeight(100),
              ),
              Container(
                child: Image.asset("assets/images/logo.png"),
                height: getHeight(100),
                width: getWidth(100),
              ),
              Expanded(child: SizedBox()),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => Get.to(() => LogInDetails(),
                          duration: Duration(microseconds: 800),
                          transition: Transition.rightToLeft),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black)),
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(),
                            height: getHeight(55),
                            width: getWidth(55),
                            child: Padding(
                              padding: EdgeInsets.all(getHeight(55) * 0.281),
                              child: Image.asset(
                                'assets/images/onboarding1.png',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text("Log In with"),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => Get.to(
                        () => LogInDetails(),
                        duration: Duration(microseconds: 800),
                        transition: Transition.rightToLeft,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black)),
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: getHeight(55),
                            width: getWidth(55),
                            child: Padding(
                              padding: EdgeInsets.all(getHeight(55) * 0.281),
                              child: Image.asset(
                                'assets/images/fb_logo.png',
                              ),
                            ),
                          ),
                          Text("Log In with"),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(child: SizedBox())
            ]),
          )),
    );
  }
}
