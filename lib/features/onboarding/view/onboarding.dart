import 'dart:math';
import 'package:flutter/material.dart';

import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/features/onboarding/widgets/onboarding_circles.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Stack(
        children: [
          const Circle(
            height: 80,
            width: 80,
            top: -10,
          ),
          const Circle(
            top: 200,
            height: 430,
            width: 430,
          ),
          const Circle(
            top: 114,
            right: 0,
            height: 130,
            width: 130,
            color: AppColors.primaryGreen,
          ),
          const SemiCircle(
            left: 18,
            width: 380,
            height: 150,
            rotationAngle: pi / 1.18,
          ),
          const Square(
            top: 65,
            right: 35,
            height: 40,
            width: 40,
            color: AppColors.purple,
            rotationAngle: pi / 1.3,
          ),
          const Square(
            bottom: 380,
            left: 115,
            height: 38,
            width: 38,
            color: AppColors.secondaryGreen,
            rotationAngle: pi / 1.3,
          ),
          textWidget()
        ],
      ),
    );
  }
}