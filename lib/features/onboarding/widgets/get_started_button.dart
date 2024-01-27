import 'package:flutter/material.dart';
import 'package:flutter_advanced_course_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_course_app/core/routing/routes.dart';
import 'package:flutter_advanced_course_app/core/theming/colors.dart';
import 'package:flutter_advanced_course_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(ColorsManager.mainColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 50), 
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
