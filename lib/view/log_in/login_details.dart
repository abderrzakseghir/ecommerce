import 'package:ecommerce/model/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInDetails extends StatelessWidget {
  const LogInDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getHeight(8)),
                Text(
                  "Enter Your Name ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getHeight(5)),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  controller: controller,
                ),
                SizedBox(height: getHeight(10)),
                Text(
                  "Enter Your Phone Number ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getHeight(5)),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  controller: controller,
                ),
                SizedBox(height: getHeight(10)),
                Text(
                  "Add Adress",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getHeight(15)),
                TextFormField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  controller: controller,
                ),
                SizedBox(height: getHeight(30)),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    width: getWidth(SizeConfig.screenWidth),
                    child:
                        TextButton(onPressed: null, child: Text('ktyjeqfq'))),
              ]),
        ),
      ),
    );
  }
}
//    width: getWidth(SizeConfig.screenWidth),