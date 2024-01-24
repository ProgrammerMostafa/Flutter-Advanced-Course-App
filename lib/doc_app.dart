import 'package:flutter/material.dart';
import 'package:flutter_advanced_course_app/core/routing/app_router.dart';
import 'package:flutter_advanced_course_app/core/routing/routes.dart';
import 'package:flutter_advanced_course_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Advanced Course',
        theme: ThemeData(primaryColor: ColorsManager.mainColor),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
