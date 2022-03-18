import 'package:flutter/material.dart';

import '../../../model/sizeconfig.dart';

class PageViewBuilder extends StatelessWidget {
  final svgPath;
  final title;

  final description;

  const PageViewBuilder({
    Key? key,
    required this.svgPath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getHeight(547),
          width: getWidth(367),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(47),
              ),
              Image.asset(
                svgPath,
                height: getHeight(155),
              ),
              SizedBox(
                height: getHeight(52),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: getHeight(25),
                ),
              ),
              SizedBox(
                height: getHeight(7.8),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: getHeight(2),
                    fontSize: getHeight(18),
                    fontWeight: FontWeight.w500,
                    color: Colors.redAccent),
              )
            ],
          ),
        ),
      ],
    );
  }
} // Pag