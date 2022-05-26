import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/size_config.dart';

class AddFilter extends StatelessWidget {
  const AddFilter({
    Key? key, required this.title,
  }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: getHeight(20),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: getHeight(18),fontWeight: FontWeight.w500),),
            GestureDetector(
                onTap:null ,
                child: SvgPicture.asset("assets/icons/Add_categories.svg")),
          ],
        ),
        SizedBox(height: getHeight(20),),

      ],),


    );
  }
}