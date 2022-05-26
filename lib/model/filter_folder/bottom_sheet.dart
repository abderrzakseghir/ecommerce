import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:esiway/screens/filter_folder/year_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/size_config.dart';
import '../../constants.dart';
import 'dotted_add.dart';
import 'add_filter.dart';
import 'experties.dart';
import 'list_selected.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({Key? key}) : super(key: key);

  @override
  _BottomSheetFilterState createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      print("builded from bottomSheet");
      listSelectedExperties;
    });
    print("builded from bottomSheet outside");
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/closer.svg",

                      color: kGray,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(1),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SvgPicture.asset("assets/icons/closer_x.svg"),
                  SizedBox(
                    width: getWidth(130),
                  ),
                  SizedBox(
                    width: getWidth(60),
                    child: Text(
                      "Filters",
                      style: TextStyle(
                          fontSize: getHeight(20), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(109),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: SizedBox(
                      //width: getWidth(45),
                      child: Text(
                        "Reset",
                        style: TextStyle(
                            color: kGray,
                            fontSize: getHeight(18),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Text(
                "Filter by level",
                style: TextStyle(
                    fontSize: getHeight(18),
                    fontWeight: FontWeight.w500,
                    color: kDarkAccent),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              Row(
                children: [
                  yearContainer(
                    title: "1CPI",
                  ),
                  SizedBox(
                    width: getWidth(5),
                  ),
                  yearContainer(
                    title: "2CPI",
                  ),
                  SizedBox(
                    width: getWidth(5),
                  ),
                  yearContainer(
                    title: "1CS",
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(4),
              ),
              Row(
                children: [
                  yearContainer(
                    title: "2CS",
                  ),
                  SizedBox(
                    width: getWidth(5),
                  ),
                  yearContainer(
                    title: "3CS",
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(20),
              ),
            ],
          ),
        ),
        Divider(
          height: getHeight(5),
          thickness: 1.3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getHeight(17),
                    ),
                    Text(
                      "Experties",
                      style: TextStyle(
                        fontSize: getHeight(18),
                        fontWeight: FontWeight.w500,
                        color: kDarkAccent,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(17),
                    ),
                    Wrap(
                      spacing: getWidth(10),
                      runSpacing: getWidth(10),
                      children: listSelectedExperties,
                    ),
                    SizedBox(
                      height: getHeight(17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: getHeight(5),
          thickness: 1.3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            children: [
              AddFilter(
                title: "Programming Language",
              ),
            ],
          ),
        ),
        Divider(
          height: getHeight(5),
          thickness: 1.3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            children: [
              AddFilter(
                title: "Tools & Technologies",
              ),
            ],
          ),
        ),
        Divider(
          height: getHeight(5),
          thickness: 1.3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(124),
                width: getWidth(428),
                child: Center(
                  child: GestureDetector(
                    onTap: () => print("See Result"),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimaryColor,
                        ),
                        height: getHeight(55),
                        width: getWidth(368),
                        child: Center(
                            child: Text("See Results",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: getHeight(18))))),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
