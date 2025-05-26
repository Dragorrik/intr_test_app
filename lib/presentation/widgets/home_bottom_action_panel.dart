// bottom_panel.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_style.dart';

class HomeBottomActionPanel extends StatelessWidget {
  final double topPosition;
  final String title;
  final List<Widget> actions;
  final Color bgColor;

  const HomeBottomActionPanel({
    super.key,
    required this.title,
    required this.actions,
    required this.topPosition,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition.sh,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
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
            Text(
              title,
              style: AppStyle.textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            ...actions,
          ],
        ),
      ),
    );
  }
}
