import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:esiway/screens/filter_folder/experties.dart';
import 'package:esiway/screens/filter_folder/year_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/size_config.dart';
import '../../constants.dart';
import 'add_filter.dart';
import 'bottom_sheet.dart';
import 'list_experties.dart';
import 'list_selected.dart';

class DottedAdd extends StatefulWidget {
  const DottedAdd({
    Key? key,
  }) : super(key: key);

  @override
  State<DottedAdd> createState() => _DottedAddState();
}

class _DottedAddState extends State<DottedAdd> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
     {

       showDialog(
           barrierDismissible : false,
           context: context, builder: (BuildContext context)  =>
       StatefulBuilder(

         builder: (BuildContext context,   setState)
          => AlertDialog(
            actions: [

              GestureDetector(
                onTap: (){
                  BottomSheetFilter();
                  print("pressed from button just text ");





                  setState(() {






                    Navigator.pop(context,true );



                  });

                  showModalBottomSheet(
                      isScrollControlled:true,


                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      context: context,
                      builder: (BuildContext context) {




                        return BottomSheetFilter( );






                      });
                } ,
                child: Container(
                  height: getHeight(45),
                  width: getWidth(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red
                  ),
                  child :const Center(child:  Text("just text",style: TextStyle(color: Colors.white),)) ,
                ),
              ),
            ],

          shape : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)

          )  ,
           content: Container(
             width: getWidth(360) ,
             child:
             Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Wrap(
                     spacing: getWidth(5),
                     runSpacing: getWidth(4),
                     children: listExperties,

                   ),
                      SizedBox(height: getHeight(30),),

                 ],
               ),

           ),



         ),

       ));

     }
        ,

      child: Container(

        height: getHeight(45),
        width: getWidth(80),
        decoration: DottedDecoration(
          shape: Shape.box,
          borderRadius: BorderRadius.circular(10), //remove this to get plane rectange
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center   ,
          mainAxisAlignment: MainAxisAlignment.center  ,
          children: [
            Text("Add",style: TextStyle(color: kGray,fontSize: getHeight(16),fontWeight: FontWeight.w500),),
            SvgPicture.asset("assets/icons/Add_grey.svg")
          ],),
      ),
    );
  }
}

/*
hada ta3 l conflit ta3 chakib en cas ou nkon ghalat fl resolve conflit


=======
        Expanded(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
              return true;
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: getHeight(10),
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    children: [
                      Container(
                        height: getHeight(126),
                        width: getWidth(368),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/icons/Rectangle 46.png',
                          height: getHeight(110),
                          width: getWidth(110),
                        ),
                        bottom: getHeight(8),
                        left: getWidth(8),
                      ),
                      Positioned(
                        child: Row(
                          children: [
                            Text(
                              'Free Services',
                              style: TextStyle(
                                fontSize: getHeight(15),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: getWidth(3),
                            ),
                            Text(
                              '. 2CPI',
                              style: TextStyle(
                                fontSize: getHeight(13),
                                fontWeight: FontWeight.w500,
                                color: kGray,
                              ),
                            ),
                          ],
                        ),
                        top: getHeight(23),
                        left: getWidth(128),
                      ),
                      Positioned(
                        child: Text(
                          'UI/UX Designer, Front-end Dev',
                          style: TextStyle(
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        left: getWidth(128),
                        top: getHeight(44),
                      ),
                      Positioned(
                        child: Container(
                          height: getHeight(28),
                          width: getWidth(124),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: kPrimaryAccent,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: SvgPicture.asset('assets/icons/Talent.svg'),
                                left: getWidth(12),
                                top: getHeight(5),
                                bottom: getHeight(5.54),
                              ),
                              Positioned(
                                child: Text(
                                  'Flutter & Dart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: getHeight(12),
                                  ),
                                ),
                                top: getHeight(7),
                                left: getWidth(34),
                              ),
                            ],
                          ),
                        ),
                        bottom: getHeight(22),
                        left: getWidth(128),
                      ),
                      Positioned(
                        child: SvgPicture.asset('assets/icons/Ellipse 11.svg'),
                        top: getHeight(30),
                        right: getWidth(100),
                      ),
                      Positioned(
                        child: InkWell(
                          onTap: () => {setState(() {
    newIndex = index;

    }),
    },
                          child: SvgBuilder(
                            path: (newIndex==index)
                                ? 'assets/icons/Star.svg'
                                : 'assets/icons/GoldenStar.svg',
                            height: getHeight(25),
                          ),
                        ),
                        right: getWidth(17),
                        top: getHeight(17.3),
                      ),
                      Positioned(
                        child: Text(
                          '& 5 More..',
                          style: TextStyle(
                            color: kGray,
                            fontWeight: FontWeight.w500,
                            fontSize: getHeight(13),
                          ),
                        ),
                        bottom: getHeight(29),
                        right: getWidth(51),
                      )
                    ],
                  )),
            ),

            //Your stuff here.
          ),
        ),
      ]),
      Positioned(
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: getHeight(600),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  );
                });
          },
          child: Container(
            height: getHeight(55),
            width: getWidth(55),
            decoration: BoxDecoration(
              gradient: kBlueGradient,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset('assets/icons/Filters.svg'),
            ),
          ),
        ),
        bottom: getHeight(100),
        right: getWidth(20),
      )
    ])));
  }

}
>>>>>>> master
 */
/*
freelancers Page

import 'package:esiway/screens/filter_folder/Skill_container.dart';
import 'package:esiway/screens/filter_folder/data_structure/experties/list_selected.dart';
import 'package:esiway/screens/filter_folder/data_structure/programming_languages/list_selected_programming_languages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
 import '../components/size_config.dart';
import '../components/svg_builder.dart';
import '../constants.dart';
  import 'filter_folder/bottom_sheet.dart';
import 'filter_folder/data_structure/experties/list_experties.dart';
import 'filter_folder/data_structure/programming_languages/list_programmig_languages.dart';
import 'filter_folder/data_structure/tools_&_technologies/list_selected_tools&technologies.dart';
import 'filter_folder/data_structure/tools_&_technologies/list_tools&technologies.dart';

class OurTalents extends StatefulWidget {
  const OurTalents({Key? key}) : super(key: key);

  @override
  State<OurTalents> createState() => _OurTalentsState();
}

class _OurTalentsState extends State<OurTalents> {
  var newIndex = 0;
  @override
  bool isFavourite = false;


  void Favorite() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Positioned(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(242, 244, 247, 1),
            Color.fromRGBO(242, 244, 247, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      )),
      Column(children: [
        SizedBox(
          height: getHeight(30),
        ),

        Row(
          children: [
            SizedBox(
              width: getWidth(30),
            ),
            InkWell(
              onTap: () {
                print("pressed");
              },
              child: SvgPicture.asset(
                'assets/icons/Drawer Icon.svg',
                height: getHeight(55),
              ),
            ),
            SizedBox(
              width: getWidth(75),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset('assets/illustrations/Logo.svg')],
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(84)),
              child: InkWell(
                onTap: () {
                  print("pressed");
                },
                child: Container(
                  height: getHeight(55),
                  width: getWidth(55),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kLightAccent,
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icons/Star.svg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: getHeight(21),
        ),
        Row(
          children: [
            SizedBox(
              width: getWidth(30),
            ),
            Text(
              "Our Talents",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: getHeight(20),
              ),
            ),
          ],
        ),
        SizedBox(
          height: getHeight(9),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: kBlueGradient,
                borderRadius: BorderRadius.circular(getHeight(25)),
              ),
              height: getHeight(93),
              width: getWidth(368),
            ),
            Positioned(
              child: Text(
                'Contact some of our talented \nstudents & freelancers for \nhelp or to get your work done.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(16),
                ),
              ),
              left: getWidth(22),
              top: getHeight(19),
            ),
            Positioned(
              child: SvgPicture.asset("assets/illustrations/Freelancer.svg"),
              right: getWidth(19),
              bottom: getHeight(0),
            )
          ],
        ),
        SizedBox(
          height: getHeight(16),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
          child: Container(
            height: getHeight(530),
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowGlow();
                return true;
              },
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Mylist()),

              //Your stuff here.
            ),
          ),
        ),
      ]),
      Positioned(
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                context: context,
                builder: (context) {


                  return ValueListenableBuilder(
                      valueListenable: listSelectedExpertiesNotifier,
                      builder: (context, content, child) {
                        return BottomSheetFilter();
                      });
                });
          },
          child: Container(
            height: getHeight(55),
            width: getWidth(55),
            decoration: BoxDecoration(
              gradient: kBlueGradient,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset('assets/icons/Filters.svg'),
            ),
          ),
        ),
        bottom: getHeight(100),
        right: getWidth(20),
      )
    ])));
  }

  Widget Mylist() => Stack(
        children: [
          Container(
            height: getHeight(131),
            width: getWidth(368),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Positioned(
            child: Image.asset(
              'assets/icons/Rectangle 46.png',
              height: getHeight(110),
            ),
          ),
          Positioned(
            child: Row(
              children: [
                Text(
                  'Free Services',
                  style: TextStyle(
                    fontSize: getHeight(15),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: getWidth(3),
                ),
                Text(
                  '. 2CPI',
                  style: TextStyle(
                    fontSize: getHeight(13),
                    fontWeight: FontWeight.w500,
                    color: kGray,
                  ),
                ),
              ],
            ),
            top: getHeight(23),
            left: getWidth(128),
          ),
          Positioned(
            child: Text(
              'UI/UX Designer, Front-end Dev',
              style: TextStyle(
                fontSize: getHeight(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            left: getWidth(128),
            top: getHeight(44),
          ),
          Positioned(
            child: Container(
              height: getHeight(28),
              width: getWidth(124),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: kPrimaryAccent,
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset('assets/icons/Talent.svg'),
                    left: getWidth(12),
                    top: getHeight(5),
                    bottom: getHeight(5.54),
                  ),
                  Positioned(
                    child: Text(
                      'Flutter & Dart',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: getHeight(12),
                      ),
                    ),
                    top: getHeight(7),
                    left: getWidth(34),
                  ),
                ],
              ),
            ),
            bottom: getHeight(22),
            left: getWidth(128),
          ),
          Positioned(
            child: SvgPicture.asset('assets/icons/Ellipse 11.svg'),
            top: getHeight(30),
            right: getWidth(100),
          ),
          Positioned(
            child: InkWell(
              onTap: Favorite,
              child: SvgBuilder(
                path: isFavourite
                    ? 'assets/icons/Star.svg'
                    : 'assets/icons/GoldenStar.svg',
                height: getHeight(25),
              ),
            ),
            right: getWidth(17),
            top: getHeight(17.3),
          ),
          Positioned(
            child: Text(
              '& 5 More..',
              style: TextStyle(
                color: kGray,
                fontWeight: FontWeight.w500,
                fontSize: getHeight(13),
              ),
            ),
            bottom: getHeight(29),
            right: getWidth(51),
          )
        ],
      );
}




 */
/*
hadi ta3 bottom nav l9dima
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/size_config.dart';
import 'assets_for_bottom_navigation_bar.dart';
import 'bottom_navigation_controller.dart';



class ModelBottomNavigationBar extends StatelessWidget {
  const ModelBottomNavigationBar({Key? key,required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {

    double displayWidth = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    BottomNavController controller = Get.put(BottomNavController());


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: getHeight(80),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 22,
              offset:const Offset(0, -7),
            ),
          ],
          borderRadius:const BorderRadius.only(
              topRight: Radius.circular(22),
              topLeft: Radius.circular(22)),
        ),
        child: GetBuilder<BottomNavController>(
          init: BottomNavController(),
          builder: (controller)=> InkWell(
            onTap: () {
              controller.changeIsTaped();

            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration:const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: controller.isTaped
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration:const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: controller.isTaped
                        ? displayWidth * .12
                        : 0,
                    width: controller.isTaped
                        ? displayWidth * .32
                        : 0,
                    decoration: BoxDecoration(
                      color: controller.isTaped
                          ? const Color(0xFF0065FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration:const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width:controller.isTaped
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration:const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:controller.isTaped
                                ? displayWidth * .13
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: controller.isTaped ? 1 : 0,
                            duration:const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              controller.isTaped
                                  ? listOfStrings[index]
                                  : '',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: getHeight(17),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration:const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: controller.isTaped
                                ? displayWidth * .03
                                : 20,
                          ),
                          SvgPicture.asset(
                            controller.isTaped
                                ? listOfIconsWhite[index]!
                                : listOfIcons[index]!,
                            height: getHeight(28),
                            width: getWidth(28),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),),);
  }
}

 */
/*
hadi ta3

 */
