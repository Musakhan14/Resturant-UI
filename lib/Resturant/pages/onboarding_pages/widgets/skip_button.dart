import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../auth_screens/welcome_screen.dart';
import '../../../theme_data/colors_theme.dart';
import '../../../theme_data/size_config.dart';
import '../../../theme_data/text_theme.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Responsive ${SizeConfig.screenWidth}');
    }
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
            ),
          );
        },
        child: Container(
          width: SizeConfig.screenWidth * 0.2,
          height: SizeConfig.screenHeight * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ThemeColors.appRedColor,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SKIP',
                  style:
                      ThemeText.heading3.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.arrow_forward,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
