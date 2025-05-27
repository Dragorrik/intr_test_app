import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_image_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/pages/profile_page.dart';
import 'package:intr_test_app/presentation/widgets/home_bottom_action_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0).r,
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundImage: AssetImage(AppImageStrings.personOne),
                      ),

                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.gdMorningText,
                            style: AppStyle.textTheme.titleSmall?.copyWith(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Text(
                            AppStrings.personOne,
                            style: AppStyle.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        AppIconStrings.notificationIcon,
                        width: 53.w,
                        height: 53.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 70.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.classNameText,
                              style: AppStyle.textTheme.titleMedium,
                            ),
                            Text(
                              AppStrings.classDescriptionText,
                              style: AppStyle.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColours.appWidgetColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).r,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.dateText,
                                style: AppStyle.textTheme.titleLarge!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                AppStrings.weekText,
                                style: AppStyle.textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${AppStrings.classNoText} ${AppStrings.classText}',
                                style: AppStyle.textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            HomeBottomActionPanel(
              title: AppStrings.personTwo,
              topPosition: 0.41,
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Image.asset(
                    AppIconStrings.editBlackIcon,
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
                SizedBox(width: 15.w),
                Image.asset(AppIconStrings.copyIcon, width: 30.w, height: 30.h),
                SizedBox(width: 15.w),
                Image.asset(
                  AppIconStrings.deleteIcon,
                  width: 30.w,
                  height: 30.h,
                ),
              ],
              bgColor: AppColours.appWidgetColor,
            ),
            HomeBottomActionPanel(
              title: AppStrings.personThree,
              topPosition: 0.5,
              actions: [
                Image.asset(AppIconStrings.addIcon, width: 35.w, height: 35.h),
              ],
              bgColor: AppColours.white,
            ),
          ],
        ),
      ),
    );
  }
}
