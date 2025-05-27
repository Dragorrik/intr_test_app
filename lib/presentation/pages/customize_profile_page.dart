import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';

class CustomizeProfilePage extends StatelessWidget {
  const CustomizeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
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
                  SizedBox(height: 20.h),

                  /// Tab bar
                  TabBar(
                    //isScrollable: true,
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    labelStyle: AppStyle.textTheme.bodyLarge,
                    //indicatorColor: AppColours.appWidgetColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: AppColours.appWidgetColor,
                      ),
                    ),

                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(text: "Personal Information"),
                      Tab(text: "Account Settings"),
                      Tab(text: "Activity & History"),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  SizedBox(
                    width: double.infinity,
                    height: 0.4.sh,
                    child: TabBarView(
                      children: [
                        Center(
                          child: Text(
                            "Personal Information",
                            style: AppStyle.textTheme.bodyLarge,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Account Settings",
                            style: AppStyle.textTheme.bodyLarge,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Activity and History",
                            style: AppStyle.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
