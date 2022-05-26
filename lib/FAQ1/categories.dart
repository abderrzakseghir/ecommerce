import 'package:esiway/components/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'list_categories.dart';

class QuestionsCategories extends StatelessWidget {
  const QuestionsCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              margin:EdgeInsets.only(right: getWidth(10)) ,
              height: getHeight(45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: kPrimaryAccent,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                  child: Text(
                    categories[index]!,
                    style: TextStyle(
                        color: kDarkAccent,
                        fontSize: getHeight(18.25),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
