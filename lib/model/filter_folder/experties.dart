import 'package:flutter/material.dart';

import '../../components/size_config.dart';
import '../../constants.dart';
import 'Skill_container.dart';
import 'list_selected.dart';

class ExpertiesContainer extends StatefulWidget {
    ExpertiesContainer({Key? key, required this.title,    }) : super(key: key);
  final String title;


  @override
  State<ExpertiesContainer> createState() => _ExpertiesContainerState();
}

class _ExpertiesContainerState extends State<ExpertiesContainer> {
  var  isClicked =false ;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(

      onTap: () {

setState(() {
  isClicked   =!isClicked ;

  if (  isClicked ) {
    listSelectedExperties.insert(
        0,
        SkillContainer(
          title:   widget.title,

        ));
  }
  var  index=listSelectedExperties.indexOf(SkillContainer(
    title:   widget.title,
  )) ;
  if (isClicked == false) {
    listSelectedExperties
        .removeAt(index);
  }
});
      },


      child: Container(
        height: getHeight(45),
        decoration: BoxDecoration(
            color:  isClicked  ? kPrimaryColor : kPrimaryAccent,
            borderRadius:const BorderRadius.all(Radius.circular(15))),
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
                  color:  isClicked   ? Colors.white : kDarkAccent,
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





