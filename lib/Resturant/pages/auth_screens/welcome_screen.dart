import 'package:flutter/material.dart';
import 'package:notifications/Resturant/pages/auth_screens/login_screen.dart';
import 'package:notifications/Resturant/pages/auth_screens/sign_up_screen.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/app_elevated_button.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/app_eleveted_button_with_border.dart';

import '../../../generated/assets.dart';
import '../../theme_data/size_config.dart';
import '../../theme_data/text_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesLogo,
                width: SizeConfig.screenWidth * 0.8,
                height: SizeConfig.screenWidth * 0.6,
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.1),
              Text(
                'Welcome to Quickbite',
                style: ThemeText.heading1.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.05),
              Text(
                'Lorem Ipsum is sisum has been1 a type specimen book. It has survived not only five centuries',
                style: ThemeText.heading3.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.28),
              AppElevatedButton(
                buttonText: 'SIGN UP',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.05),
              BorderElevatedButton(
                buttonText: 'LOGIN',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.05),
              Text(
                'By Registering Or Login you have agreed to our Terms and Conditions',
                style: ThemeText.heading3
                    .copyWith(fontSize: 17, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
