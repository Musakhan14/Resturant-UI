import 'package:flutter/material.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/app_elevated_button.dart';
import 'package:notifications/Resturant/theme_data/colors_theme.dart';
import 'package:notifications/Resturant/theme_data/text_theme.dart';

class PasswordUpdate extends StatelessWidget {
  const PasswordUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ThemeColors.appRedColor,
                    ),
                    child: const Icon(Icons.check_circle_outline,
                        color: Colors.white, size: 40),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Password Updated',
                    style: ThemeText.heading1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Congratulation Your Password',
                    style: ThemeText.heading3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Has been Updated',
                    style: ThemeText.heading3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              AppElevatedButton(
                buttonText: 'CONTINUE',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
