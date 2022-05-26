import 'package:esiway/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/size_config.dart';
import 'list_questions.dart';

class ExpasionTile extends StatefulWidget {
  const ExpasionTile({Key? key}) : super(key: key);

  // final List<Map<String,String>>  questionAnswers;

  @override
  _ExpasionTileState createState() => _ExpasionTileState();
}

class _ExpasionTileState extends State<ExpasionTile> {
  bool isExpanded = false;
  int indice=0;

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: questionAnswers.length,
      physics:
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemBuilder: (context, index) => GestureDetector(
        // highlightColor: Colors.transparent,
        // splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
            indice=index;


          });
        },
        child: Container(
          margin: EdgeInsets.only(bottom: getHeight(10)),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 22, spreadRadius: 10, color: kPrimaryAccent.withOpacity(0.25))],
            color: kPrimaryAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: AnimatedCrossFade(
            firstChild: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(20)),
                    child: Text(
                      questionAnswers[index]['title']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getHeight(18),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/illustrations/Caret.svg",
                    ),
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;


                      });
                    },
                  ),
                ],
              ),
            ),
            secondChild: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: getWidth(20)),
                        child: Text(
                          questionAnswers[index]['title']!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getHeight(18),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/illustrations/Caret.svg",
                        ),
                        onPressed: () {setState(() {
                          isExpanded = !isExpanded;
                          print('index = $index');

                        });},
                      ),
                      //SizedBox(width:getWidth(20) ,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    questionAnswers[index]['answer']!,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            crossFadeState: (isExpanded   && questionAnswers[index]['id']! == indice.toString()  )
                ? CrossFadeState.showSecond
                :  CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 1200),
            reverseDuration: Duration.zero,
            sizeCurve: Curves.fastLinearToSlowEaseIn,
          ),
        ),
      ),
    );
  }
}
