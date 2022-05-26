
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/size_config.dart';
import '../../constants.dart';


 class ExpertiesContainer extends StatelessWidget {
   const ExpertiesContainer({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: (){
         print("UI/UX clicked");

       },
       child: Container(
         height: getHeight(45),

         decoration:const BoxDecoration(
             color:   kPrimaryColor  ,
             borderRadius: BorderRadius.all(Radius.circular(15))),
         child: Row(

           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             SizedBox(width: getWidth(15),),
               Text(
                  "UI/UX Design",
                 style: TextStyle(
                     color:   Colors.white  ,
                     fontWeight: FontWeight.w500,
                     fontSize: getHeight(16)),
               ),


             SizedBox(width: getWidth(15),),

           ],
         ),
       ),
     );
   }
 }
