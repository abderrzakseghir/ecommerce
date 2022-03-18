import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/sizeconfig.dart';
import '../log_in/log_in.dart';
import '../widgets/animated_dots.dart';
import '../widgets/onboardingbody.dart';

class SplashScreen extends StatefulWidget {
  // String screenRoute = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;
  var width = 0.0;
  late Color color;
  var opacity = 1.0;

  List<Map> splashData = [
    {
      'title': 'Welcome to esiway!',
      'svgPath': 'assets/images/onboarding1.png',
      'description': 'We are happy to have here on\n'
          ' esiway app, whether you’re a\n'
          ' student here or guest, we hope you\n'
          ' have an amazing experience.\n'
          'HAVE FUN!',
    },
    {
      'title': 'Student at ESI SBA?',
      'svgPath': 'assets/images/onboarding2.png',
      'description': 'Register and join our community,\n'
          ' you can manage your school\n'
          ' documents, get in touch with your\n'
          ' colleagues and share your\n'
          ' experience!',
    },
    {
      'title': 'visiting as a guest?',
      'svgPath': 'assets/images/onboarding3.png',
      'description': 'Welcome to our community!\n'
          ' we’ll walk you through everything\n'
          ' you need to know about ESI SBA,\n'
          ' and expose you to some of our\n'
          ' talented students.',
    },
  ];
  PageController _pageController = PageController(initialPage: 0);

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
      if (_currentPage == 2) width = getWidth(368);
      color = Colors.transparent;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    SizeConfig().init(context);

    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SafeArea(
            child: Column(children: [
          SizedBox(
            height: getHeight(59),
          ),
          SizedBox(
            height: getHeight(55),
            child: Row(
              children: [
                SizedBox(
                  width: getWidth(30),
                ),

                _currentPage == (0)
                    ? SizedBox(
                        width: getWidth(55),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            _pageController.animateToPage(_currentPage - 1,
                                duration: const Duration(
                                  milliseconds: 250,
                                ),
                                curve: Curves.bounceInOut);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          height: getHeight(55),
                          width: getWidth(55),
                          child: Padding(
                            padding: EdgeInsets.all(getHeight(55) * 0.281),
                            child: Image.asset(
                              'assets/images/onboarding1.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),

                SizedBox(
                  width: getWidth(83),
                ),
                Text(
                  "Fruits.",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: getHeight(25),
                      color: Colors.red),
                ),

                //SizedBox(width: getWidth(105),),
                const Spacer(),
                _currentPage == 2
                    ? SizedBox(
                        width: getWidth(43),
                      )
                    : TextButton(
                        onPressed: () => null,
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9DA3B6)),
                        ),
                      ),

                SizedBox(
                  width: getWidth(28),
                )
              ],
            ),
          ), // row has 'Arrowback button' + '"esiway."' + 'Skip button'
          SizedBox(
            height: getHeight(68),
          ),
          // separate between the row and the page view
          SizedBox(
            height: getHeight(547),
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onchanged,
              itemCount: splashData.length,
              itemBuilder: (context, index) => PageViewBuilder(
                description: splashData[index]['description'],
                svgPath: splashData[index]['svgPath'],
                title: splashData[index]['title'],
              ),
            ),
          ), // the body of the PageViewBuilder
          SizedBox(
            height: getHeight(75),
          ), //separate between the body and the row of dots
          SizedBox(
            height: getHeight(55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: _currentPage < 2 ? getWidth(170) : getWidth(0)),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 250),
                  opacity: _currentPage == 2 ? 0.0 : 1.0,
                  child: AnimatedDots(
                      splashData: splashData, currentPage: _currentPage),
                ), // the Animated Dots
                _currentPage != 2 ? const Spacer() : const SizedBox(),

                AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: getHeight(55),
                    width: _currentPage == 2 ? getWidth(368) : getWidth(55),
                    child: Padding(
                      padding: EdgeInsets.all(getHeight(55) * 0.281),
                      child: _currentPage != 2
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  _pageController.animateToPage(
                                      _currentPage + 1,
                                      duration: const Duration(
                                        milliseconds: 250,
                                      ),
                                      curve: Curves.easeInOut);
                                });
                              },
                              child:
                                  Image.asset('assets/images/onboarding2.png'))
                          : Center(
                              child: InkWell(
                              onTap: () => Get.to(() => LogIn()),
                              child: Text("Let's Start",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: getHeight(18),
                                      color: Colors.white)),
                            )),
                    )), // the animated container of the large button

                SizedBox(width: getWidth(30)),
              ],
            ),
          ),
        ])));
  }
}
