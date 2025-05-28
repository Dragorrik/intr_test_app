import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_image_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/pages/profile_page.dart';
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          AppIconStrings.backIcon,
                          width: 45.w,
                          height: 45.h,
                        ),
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
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
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
                      Tab(text: AppStrings.personalInfoText),
                      Tab(text: AppStrings.accountSettingsText),
                      Tab(text: AppStrings.activityAndHistoryText),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                          child: Text(
                            AppStrings.personalInfoText,
                            style: AppStyle.textTheme.bodyLarge,
                          ),
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10.h),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.r),
                                child: Image.asset(
                                  AppImageStrings.personThree,
                                  width: 105.w,
                                  height: 105.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(height: 10.h),
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
                            AppStrings.activityAndHistoryText,
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
            Positioned(
              top: 0.83.sh,
              left: 0,
              right: 0,
              bottom: 0,
              child: ProfileBottomActionPanel(
                title: "Whatchamacallit",

                bgColor: AppColours.navigationSixColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
