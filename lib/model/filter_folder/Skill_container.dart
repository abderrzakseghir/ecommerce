import 'package:flutter/material.dart';

import '../../components/size_config.dart';
import '../../constants.dart';
import 'list_selected.dart';

class SkillContainer extends StatefulWidget {
  SkillContainer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _SkillContainerState createState() => _SkillContainerState();
}

class _SkillContainerState extends State<SkillContainer> {


  @override
  Widget build(BuildContext context) {
    bool isTaped = true;
    return GestureDetector(
      onTap: () {
        setState(() {
          isTaped = !isTaped;

        var  index=listSelectedExperties.indexOf(SkillContainer(
            title: widget.title,
          ))+1 ;
          if (isTaped == false) {
            listSelectedExperties
                .removeAt(index);
          }

        });
      },
      child: Container(
        height: getHeight(45),
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: getWidth(15),
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color:  Colors.white ,
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(16)),
            ),
            SizedBox(
              width: getWidth(15),
            ),
          ],
        ),
      ),
    );
  }
}
