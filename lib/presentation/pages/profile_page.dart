import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_image_strings.dart';
import 'package:intr_test_app/core/constants/app_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';
import 'package:intr_test_app/presentation/pages/customize_profile_page.dart';
import 'package:intr_test_app/presentation/pages/home_page.dart';
import 'package:intr_test_app/presentation/widgets/profile_bottom_action_panel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<bool> _visiblePanels = List.filled(6, false);

  @override
  void initState() {
    super.initState();
    _showPanelsSequentially();
  }

  void _showPanelsSequentially() async {
    for (int i = 0; i < _visiblePanels.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      if (mounted) {
        setState(() {
          _visiblePanels[i] = true;
        });
      }
    }
  }

  Widget _buildAnimatedPanel({
    required bool isVisible,
    required double topPosition,
    required String title,
    required Color bgColor,
    VoidCallback? onEditTap,
  }) {
    return Positioned(
      top: topPosition.sh,
      left: 0,
      right: 0,
      bottom: 0,
      child: AnimatedSlide(
        offset: isVisible ? Offset.zero : const Offset(0, 1),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        child: AnimatedOpacity(
          opacity: isVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: ProfileBottomActionPanel(
            title: title,
            bgColor: bgColor,
            onEditTap: onEditTap,
          ),
        ),
      ),
    );
  }

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
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
          _buildAnimatedPanel(
            isVisible: _visiblePanels[0],
            title: 'Gobbledygook',
            topPosition: 0.38,
            bgColor: AppColours.navigationOneColor,
          ),
          _buildAnimatedPanel(
            isVisible: _visiblePanels[1],
            title: 'Bumblebee',
            topPosition: 0.47,
            bgColor: AppColours.navigationTwoColor,
          ),
          _buildAnimatedPanel(
            isVisible: _visiblePanels[2],
            title: 'Lollygag',
            topPosition: 0.56,
            bgColor: AppColours.navigationThreeColor,
          ),
          _buildAnimatedPanel(
            isVisible: _visiblePanels[3],
            title: 'Hodgepodge',
            topPosition: 0.65,
            bgColor: AppColours.navigationFourColor,
          ),
          _buildAnimatedPanel(
            isVisible: _visiblePanels[4],
            title: 'Flabbergasted',
            topPosition: 0.74,
            bgColor: AppColours.navigationFiveColor,
          ),
          _buildAnimatedPanel(
            isVisible: _visiblePanels[5],
            title: 'Whatchamacallit',
            topPosition: 0.83,
            bgColor: AppColours.navigationSixColor,
            onEditTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomizeProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
