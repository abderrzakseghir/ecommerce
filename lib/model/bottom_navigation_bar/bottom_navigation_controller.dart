import 'package:get/get.dart';

class BottomNavController extends GetxController{

  bool isTaped=false;
  int bottmIndex=0;
  void changeIndex(index){
    bottmIndex=index;
    update();

  }
  void changeIsTaped(){

    isTaped=!isTaped;
    update();
  }



}