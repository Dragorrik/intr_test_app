import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';
import 'package:intr_test_app/presentation/pages/home_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  Color selectedColor = Colors.white;

  final List<Widget> _pages = [
    HomePage(),
    const Center(child: Text("Stats Page")),
    const Center(child: Text("Scan Page")),
    const Center(child: Text("Docs Page")),
    const Center(child: Text("Settings Page")),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        selectedColor = Colors.white;
      } else {
        selectedColor = AppColours.scaffoldBackgroundColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16).r,
        child: Container(
          height: 55.h,
          decoration: BoxDecoration(
            color: const Color(0xFF1D1D1D),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTap(0),
              ),

              // Stats
              IconButton(
                icon: Icon(
                  Icons.bar_chart_outlined,
                  color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTap(1),
              ),

              // Scan (highlighted)
              Container(
                height: 45.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8FF3A),
                  borderRadius: BorderRadius.circular(35).r,
                ),
                child: IconButton(
                  icon: const Icon(Icons.qr_code_scanner, color: Colors.black),
                  onPressed: () => _onTap(2),
                ),
              ),

              // Docs
              IconButton(
                icon: Icon(
                  Icons.file_download_rounded,
                  color: _selectedIndex == 3 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTap(3),
              ),

              // Settings
              IconButton(
                icon: Icon(
                  Icons.tune_outlined,
                  color: _selectedIndex == 4 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
