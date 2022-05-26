
import 'package:esiway/components/size_config.dart';
import 'package:esiway/constants.dart';
import 'package:esiway/screens/FAQ/the_blue_container.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'C:\/Users/asegh/StudioProjects/esiway-rep-master/lib/screens/FAQ/categories.dart';
import 'expansion_tile.dart';




class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {



  bool isExpanded = true;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: kPrimaryColor,

        body: Container(

          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
                const Positioned(
                    child: TheBlueContainer()),
              Positioned(
                right: 0,
                top: getHeight(140),
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height- getHeight(140),
                decoration:const BoxDecoration(
                borderRadius: BorderRadius.only( topRight: Radius.circular(25),topLeft: Radius.circular(25) ),
                  gradient: kGradient,
                  ),
                  child: QuestionsCategories(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}



