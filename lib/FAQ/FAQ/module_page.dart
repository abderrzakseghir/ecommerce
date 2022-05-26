import 'package:esiway/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: getHeight(51),
            ),
            IconButton(
                onPressed: null,
                icon: SvgPicture.asset("assets/icons/BackArrow.svg")),
            SizedBox(
              height: getHeight(18),
            ),
            Container(
              width: SizeConfig.screenWidth - getWidth(60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red),
              child: Padding(
                padding:   EdgeInsets.all(getHeight(21.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                  Row(
                    children: [
                      Text(
                        "here Title",
                        style: TextStyle(
                            fontSize: getHeight(18), fontWeight: FontWeight.w700),
                      ),
                     // SvgPicture.asset(assetName),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(12),
                  ),
                  Text("here description",
                      style: TextStyle(
                          fontSize: getHeight(16), fontWeight: FontWeight.w400)),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
