// bottom_panel.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_icon_strings.dart';
import 'package:intr_test_app/core/constants/app_style.dart';

class ProfileBottomActionPanel extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback? onEditTap;

  const ProfileBottomActionPanel({
    super.key,
    required this.title,
    required this.bgColor,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20).r,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppIconStrings.loaderIcon, width: 30.w, height: 30.h),
          SizedBox(width: 10.w),
          Column(
            children: [
              SizedBox(height: 3.h),
              Text(title, style: AppStyle.textTheme.titleMedium),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onEditTap,
            child: Image.asset(
              AppIconStrings.editWhiteIcon,
              width: 30.w,
              height: 30.h,
            ),
          ),
        ],
      ),
    );
  }
}
