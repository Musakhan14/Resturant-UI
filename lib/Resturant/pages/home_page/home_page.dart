import 'package:flutter/material.dart';
import 'package:notifications/Resturant/theme_data/colors_theme.dart';
import 'package:notifications/Resturant/theme_data/text_theme.dart';

import '../../../generated/assets.dart';
import '../../theme_data/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = -1; // -1 represents no selection
  List<String> foods = ['Pizza', 'Sandwich', 'Juice', 'Ice Cream'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find The Best Food & \nRestaurants',
                      style: ThemeText.heading1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ThemeColors.appLimeColor,
                          ),
                          child: const Icon(Icons.notifications_outlined,
                              color: Colors.white, size: 25),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 15,
                            height: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ThemeColors.appRedColor,
                            ),
                            child: const Center(
                              child: Text('1'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.1),
                //************** TextFields Start   *****************//

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ThemeColors.appWhite70Color,
                    hintText: 'Search Here',
                    prefixIcon: const Icon(Icons.search),
                    icon: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: ThemeColors.appWhite70Color,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.menu,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.01),
                //************** TextFields End   *****************//

                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedCategoryIndex = index;
                            });
                          },
                          child: Chip(
                            side: BorderSide.none,
                            color: index == selectedCategoryIndex
                                ? MaterialStateProperty.all(
                                    ThemeColors.appRedColor)
                                : MaterialStateProperty.all(
                                    ThemeColors.appWhite70Color),
                            avatar: Icon(
                              Icons.local_pizza,
                              color: index == selectedCategoryIndex
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            label: Text(
                              foods[index],
                              style: TextStyle(
                                color: index == selectedCategoryIndex
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Restaurants',
                      style: ThemeText.heading1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: ThemeColors.appRedColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ThemeColors.appRedColor,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
                SizedBox(
                  height: 205,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 250,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ThemeColors.appRedColor,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 250, // Set your desired width
                                  height: 120, // Set your desired height
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      Assets.imagesPizza,
                                      // Replace with the path to your asset image
                                      fit: BoxFit
                                          .cover, // You can adjust the BoxFit property as needed
                                    ),
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenWidth * 0.04),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Ariana Hotel',
                                        style: ThemeText.heading3.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      // SizedBox(height: SizeConfig.screenWidth * 0.01),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '1.4 Km Away',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenWidth * 0.01),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pizza | Pasta | Spegetti',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 10,
                            // bottom: ,
                            // left: ,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ThemeColors.appRedColor,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Foods',
                      style: ThemeText.heading1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: ThemeColors.appRedColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ThemeColors.appRedColor,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
                SizedBox(
                  height: 155,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 170,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ThemeColors.appRedColor,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 250, // Set your desired width
                                  height: 90, // Set your desired height
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      Assets.imagesPizza,
                                      // Replace with the path to your asset image
                                      fit: BoxFit
                                          .cover, // You can adjust the BoxFit property as needed
                                    ),
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenWidth * 0.04),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Ariana Hotel',
                                        style: ThemeText.heading3.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      // SizedBox(height: SizeConfig.screenWidth * 0.01),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '1.4 Km Away',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenWidth * 0.01),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pizza | Pasta | Spegetti',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 10,
                            // bottom: ,
                            // left: ,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ThemeColors.appRedColor,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
