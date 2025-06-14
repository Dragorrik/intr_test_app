import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/pages/customize_profile_page.dart';
import 'package:intr_test_app/presentation/pages/profile_page.dart';
import 'package:intr_test_app/presentation/widgets/custom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Interview App',
          theme: AppStyle.theme,
          home: child,
        );
      },
      child: CustomBottomNavBar(),
    );
  }
}
