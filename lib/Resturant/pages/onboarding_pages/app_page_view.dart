import 'package:flutter/material.dart';
import 'package:notifications/Resturant/pages/onboarding_pages/first_onbording_screen.dart';
import 'package:notifications/Resturant/pages/onboarding_pages/fourth_onbording_page.dart';
import 'package:notifications/Resturant/pages/onboarding_pages/second_onbording_screen.dart';
import 'package:notifications/Resturant/pages/onboarding_pages/third_onbording_screen.dart';


class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 620,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                FirstOnboardingScreen(pageNumber: 1),
                SecondOnboardingScreen(pageNumber: 1),
                ThirdOnboardingScreen(pageNumber: 1),
                FourthOnboardingScreen(pageNumber: 1),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => buildPageIndicator(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPageIndicator(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentPage ? Colors.red : Colors.grey,
      ),
    );
  }
  Widget buildPageIndicatorr(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 200.0,
      height: 300.0,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        color: index == _currentPage ? Colors.red : Colors.grey,
      ),
    );
  }
}


