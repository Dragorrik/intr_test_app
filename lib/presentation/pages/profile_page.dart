import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_image_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/widgets/profile_bottom_action_panel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(18.0).r,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppIconStrings.backIcon,
                      width: 45.w,
                      height: 45.h,
                    ),
                    Text(
                      AppStrings.profileText,
                      style: AppStyle.textTheme.titleMedium,
                    ),
                    Image.asset(
                      AppIconStrings.optionIcon,
                      width: 45.w,
                      height: 45.h,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60.r,
                      backgroundImage: AssetImage(AppImageStrings.personTwo),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.personFour,
                            style: AppStyle.textTheme.titleMedium,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            AppStrings.personDescriptionText,
                            style: AppStyle.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 10.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColours.appWidgetColor,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppStrings.customizeProfileText,
                                  style: AppStyle.textTheme.titleSmall
                                      ?.copyWith(color: Colors.black),
                                ),
                                SizedBox(width: 5.w),
                                Image.asset(
                                  AppIconStrings.goIcon,
                                  width: 25.w,
                                  height: 25.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ProfileBottomActionPanel(
            title: 'Gobbledygook',
            topPosition: 0.38,
            bgColor: AppColours.navigationOneColor,
          ),
          ProfileBottomActionPanel(
            title: 'Bumblebee',
            topPosition: 0.47,
            bgColor: AppColours.navigationTwoColor,
          ),
          ProfileBottomActionPanel(
            title: 'Lollygag',
            topPosition: 0.56,
            bgColor: AppColours.navigationThreeColor,
          ),
          ProfileBottomActionPanel(
            title: 'Hodgepodge',
            topPosition: 0.65,
            bgColor: AppColours.navigationFourColor,
          ),
          ProfileBottomActionPanel(
            title: 'Flabbergasted',
            topPosition: 0.74,
            bgColor: AppColours.navigationFiveColor,
          ),
          ProfileBottomActionPanel(
            title: 'Whatchamacallit',
            topPosition: 0.83,
            bgColor: AppColours.navigationSixColor,
          ),
        ],
      ),
    );
  }
}
