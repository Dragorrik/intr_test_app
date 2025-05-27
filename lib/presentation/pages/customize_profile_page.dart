import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_image_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/widgets/custom_data_container.dart';
import 'package:intr_test_app/presentation/widgets/profile_bottom_action_panel.dart';

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
                    height: 0.7.sh,
                    child: TabBarView(
                      children: [
                        Center(
                          child: Text(
                            "Personal Information",
                            style: AppStyle.textTheme.bodyLarge,
                          ),
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 25.h),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.r),
                                child: Image.asset(
                                  AppImageStrings.personThree,
                                  width: 106.w,
                                  height: 106.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                AppStrings.personFour,
                                style: AppStyle.textTheme.titleMedium,
                              ),
                              //SizedBox(height: 5.h),
                              Text(
                                AppStrings.appDeveloperText,
                                style: AppStyle.textTheme.titleSmall!.copyWith(
                                  color: AppColours.appWidgetColor,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              CustomDataContainer(
                                title: AppStrings.personalDataText,
                                iconPath: AppIconStrings.profileIcon,
                              ),
                              SizedBox(height: 10.h),
                              CustomDataContainer(
                                title: AppStrings.settingText,
                                iconPath: AppIconStrings.settingIcon,
                              ),
                              SizedBox(height: 10.h),
                              CustomDataContainer(
                                title: AppStrings.dashboardText,
                                iconPath: AppIconStrings.dashboardIcon,
                              ),
                              SizedBox(height: 10.h),
                              CustomDataContainer(
                                title: AppStrings.billingDetailsText,
                                iconPath: AppIconStrings.billingIcon,
                              ),
                            ],
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

            /// Bottom Action Panel
            ProfileBottomActionPanel(
              title: "Whatchamacallit",
              topPosition: 0.83,
              bgColor: AppColours.navigationSixColor,
            ),
          ],
        ),
      ),
    );
  }
}
