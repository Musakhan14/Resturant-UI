import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notifications/Resturant/pages/auth_screens/login_screen.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/app_elevated_button.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/divider.dart';
import 'package:notifications/Resturant/pages/auth_screens/widgets/socials_button.dart';
import 'package:notifications/Resturant/theme_data/colors_theme.dart';
import 'package:notifications/Resturant/theme_data/text_theme.dart';

import '../../../generated/assets.dart';
import '../../theme_data/size_config.dart';
import 'forgot_password.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///Image Start
                Image.asset(
                  Assets.imagesLogo,
                  width: SizeConfig.screenWidth * 0.3,
                  height: SizeConfig.screenWidth * 0.3,
                ),

                ///Image End

                //************** TextFields Start   *****************//
                const TextField(
                  decoration: InputDecoration(
                      labelText: 'Name here', hintText: 'Full name'),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.05),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email Here',
                    hintText: 'Enter Email',
                    suffixIcon: Icon(Icons.remove_red_eye, size: 20),
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.05),

                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password Here',
                    hintText: 'Enter Password',
                    suffixIcon: Icon(Icons.remove_red_eye, size: 20),
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.05),

                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Password',
                    suffixIcon: Icon(Icons.remove_red_eye, size: 20),
                  ),
                ),
                //************** TextFields End   *****************//
                SizedBox(height: SizeConfig.screenWidth * 0.05),

                //************** Forgot Password Start   *****************//
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword()));

                      },
                      child: Text(
                        'Forgot Password ?',
                        style: ThemeText.heading3
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                //************** Forgot Password End   *****************//
                SizedBox(height: SizeConfig.screenWidth * 0.05),

                //************** AppElevatedButton Start   *****************//
                AppElevatedButton(
                  buttonText: 'SIGNUP',
                  onPressed: () {},
                ),

                //************** AppElevatedButton End   *****************//


                SizedBox(height: SizeConfig.screenWidth * 0.04),
                //************** AppDivider Start   *****************//
                const AppDivider(),
                //************** AppDivider End   *****************//
                SizedBox(height: SizeConfig.screenWidth * 0.08),

                //************** SocialButtons Start   *****************//
                SocialButton(
                  buttonText: 'LOGIN',
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: ThemeColors.appBlack54Color,
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
                SocialButton(
                  buttonText: 'LOGIN',
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: ThemeColors.appBlack54Color,
                  ),
                ),
                //************** SocialButtons End   *****************//
                SizedBox(height: SizeConfig.screenWidth * 0.04),

                //************** SocialButtons End   *****************//
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: ThemeText.heading3
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: const Text(
                          'LogIn Now',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
