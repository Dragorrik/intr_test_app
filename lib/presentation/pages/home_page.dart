import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home', style: TextStyle(fontSize: 20.sp))),
      body: Center(
        child: Text(
          'Welcome to the Home Page!',
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}
