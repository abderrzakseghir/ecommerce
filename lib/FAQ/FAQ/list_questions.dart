List<Map<String, String>> questionAnswers = [
  {
    'id': '0',
    'title': 'Why chose ESI',
    'answer': 'Qualité de formation + mhadjeb tae foyer'
  },
  {'id': '1', 'title': 'Why not ESI Alger', 'answer': 'lah ysahal alik'},
  {'id': '2', 'title': 'kayen plassa nji ?', 'answer': 'Win tji win '},
  {
    'id': '3',
    'title': "L'adventage ta3 ESI SBA",
    'answer':
        'kayen bzf swalah mla7 kima saidi akhedm\n matekhdmch kif kif, en fait 9alna 3endkom zero\n w howa maya3rfch ismna mmpa, kayen tani\n remplacement ta3 les scéances bah tadrobha\n b ra9da sba7 b mercredi kayen kayen  '
  },
  {
    'id': '4',
    'title': 'kayen plassa nji ?',
    'answer': 'jib la moyenne men ba3d sahal '
  },
];

/*
    Positioned(
                bottom: 0,
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
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;

                          HapticFeedback.lightImpact();
                        });
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Stack(
                        children: [
                          AnimatedContainer(
                            duration:const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex
                                ? displayWidth * .32
                                : displayWidth * .18,
                            alignment: Alignment.center,
                            child: AnimatedContainer(
                              duration:const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              height: index == currentIndex
                                  ? displayWidth * .12
                                  : 0,
                              width: index == currentIndex
                                  ? displayWidth * .32
                                  : 0,
                              decoration: BoxDecoration(
                                color: index == currentIndex
                                    ?const Color(0xFF0065FF)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration:const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex
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
                                      width: index == currentIndex
                                          ? displayWidth * .13
                                          : 0,
                                    ),
                                    AnimatedOpacity(
                                      opacity: index == currentIndex ? 1 : 0,
                                      duration:const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child: Text(
                                        index == currentIndex
                                            ? listOfStrings[index]
                                            : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: getHeight(15),
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
                                      width: index == currentIndex
                                          ? displayWidth * .03
                                          : 20,
                                    ),
                                    SvgPicture.asset(
                                      index == currentIndex
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
                  ),
                ),
              )
 */
