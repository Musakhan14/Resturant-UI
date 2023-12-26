
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../theme_data/size_config.dart';
import '../../theme_data/text_theme.dart';
import 'widgets/skip_button.dart';

class SecondOnboardingScreen extends StatelessWidget {
  final int pageNumber;
  const SecondOnboardingScreen({super.key, required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Column(
            children: [
              // Skip Button
              const SkipButton(),
              // Skip Button End
              const SizedBox(height: 40),
              //Image
              Image.asset(
                Assets.imagesRes,
                width: SizeConfig.screenWidth * 0.8,
                height: SizeConfig.screenHeight * 0.3,
              ),
              //Image End
              const SizedBox(height: 10),
              Text(
                'Order in a Snap',
                style: ThemeText.heading1.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Lorem Ipsum is simply been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  style: ThemeText.heading3,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
