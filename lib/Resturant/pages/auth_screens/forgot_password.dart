import 'package:flutter/material.dart';
import 'package:notifications/Resturant/pages/auth_screens/sign_up_screen.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/app_elevated_button.dart';
import 'package:notifications/Resturant/theme_data/text_theme.dart';

import '../../theme_data/size_config.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forget Password',
                    style: ThemeText.heading1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Enter your registered email below',
                    style: ThemeText.heading3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter Here',
                      hintText: 'email here',
                      suffixIcon: Icon(Icons.remove_red_eye, size: 20),
                    ),
                  ),
                  //************** TextFields End   *****************//
                  SizedBox(height: SizeConfig.screenWidth * 0.001),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Remember the password?",
                        style: ThemeText.heading3.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'LogIn Now',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              AppElevatedButton(
                buttonText: 'SUBMIT',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
