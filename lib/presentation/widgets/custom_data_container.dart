import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';

import 'package:intr_test_app/core/constants/app_style.dart';

class CustomDataContainer extends StatelessWidget {
  final String title;
  final String iconPath;
  const CustomDataContainer({
    super.key,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColours.accountDataContainerColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Image.asset(iconPath, width: 25.w, height: 25.h),
          SizedBox(width: 15.w),
          Text(
            title,
            style: AppStyle.textTheme.labelMedium?.copyWith(
              color: Colors.white,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 13.w,
            ),
          ),
        ],
      ),
    );
  }
}
