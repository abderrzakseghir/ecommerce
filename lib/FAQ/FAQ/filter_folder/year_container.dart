
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/size_config.dart';
import '../../constants.dart';


class yearContainer extends StatefulWidget {
  yearContainer({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<yearContainer> createState() => _yearContainerState();
}

class _yearContainerState extends State<yearContainer> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        setState(() {
          isClicked=!isClicked;

        });

      },
      child: Container(
        height: getHeight(45),
        width: getWidth(80),
        decoration: BoxDecoration(
            color: isClicked ? kPrimaryColor : kPrimaryAccent,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  color: isClicked ? Colors.white : kDarkAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(16)),
            ),
            SizedBox(width: getWidth(10),),
            isClicked ? SvgPicture.asset("assets/icons/Close Icon.svg") : SizedBox(height: 0,width: 0,)

          ],
        ),
      ),
    );
  }
}
