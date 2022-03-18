import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/sizeconfig.dart';
 

class AnimatedDots extends StatelessWidget {
  const AnimatedDots({
    Key? key,
    required this.splashData,
    required int currentPage,
  }) : _currentPage = currentPage, super(key: key);

  final List<Map> splashData;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(splashData.length, (int index) {
            return AnimatedContainer(
                duration:const Duration(milliseconds: 250),
                height: getHeight(9),
                width: (index == _currentPage && _currentPage < 2)
                    ? getWidth(29)
                    : getWidth(9),
                margin: EdgeInsets.symmetric(
                    horizontal: _currentPage == 2
                        ? getWidth(0)
                        : getWidth(9),
                    vertical: _currentPage == 2
                        ? getWidth(0)
                        : getHeight(9)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (index == _currentPage)
                        ? Colors.red
                        : const Color(0xff9DA3B6)));
          })),
    );
  }
}