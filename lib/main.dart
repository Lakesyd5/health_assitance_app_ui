import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_assitance_ui/features/onboarding/view/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize:  Size(375, 812),
      child:  MaterialApp(
        home: Onboarding(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
