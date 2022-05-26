import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:esiway/constants.dart';
import '../../components/size_config.dart';

class TheBlueContainer extends StatelessWidget {
  const TheBlueContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      height: getHeight(165),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Positioned(
            top: getHeight(45),
            left: getWidth(30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/BackArrow.svg',
                    color: Colors.white,
                  ),
                  onPressed: () {


                  }),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(
              'assets/illustrations/FaqTLDecoration.svg',
            ),
          ),
          Positioned(
            right: 0,
            child: SvgPicture.asset(
              'assets/illustrations/FaqTRDecoration.svg',
            ),
          ),

          Positioned(
            top: getHeight(90),
            child: SizedBox(
              width: SizeConfig.screenWidth,
              child: Text(
                'Frequently Asked Questions',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getHeight(22),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}