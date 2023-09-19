import 'dart:math';
import 'package:flutter/material.dart';

import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/features/Home/view/home.dart';
import 'package:health_assitance_ui/features/onboarding/widgets/onboarding_circles.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context);

    // Calculate responsive sizes based on the screen width
    double circleSize = screenSize.size.width * 0.2;
    double semiCircleHeight = screenSize.size.height * 0.15;
    double squareSize = screenSize.size.width * 0.08;
    double boldTextFontSize = screenSize.size.width < 600 ? 40 : 45;
    double textFontSize = screenSize.size.width < 600 ? 16 : 24;
    
    return  Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Home(),));
        },
        child: Stack(
          children: [
            Circle(
              height: circleSize,
              width: circleSize,
              top: -circleSize * 0.18,
            ),
            Circle(
              top: screenSize.size.height * 0.048,
              height: screenSize.size.height * 0.8,
              width: screenSize.size.width,
            ),
            Circle(
              top: screenSize.size.height * 0.06,
              right: 0,
              height: screenSize.size.height * 0.28,
              width: screenSize.size.width * 0.28,
              color: AppColors.primaryGreen,
            ),
            SemiCircle(
              left: screenSize.size.width * 0.05,
              width: screenSize.size.width * 0.9,
              height: semiCircleHeight,
              rotationAngle: pi / 1.18,
            ),
            Square(
              top: screenSize.size.height * 0.09,
              right: screenSize.size.width * 0.08,
              height: squareSize,
              width: squareSize,
              color: AppColors.purple,
              rotationAngle: pi / 1.3,
            ),
            Square(
              bottom: screenSize.size.height * 0.4,
              left: screenSize.size.width * 0.3,
              height: squareSize,
              width: squareSize,
              color: AppColors.secondaryGreen,
              rotationAngle: pi / 1.3,
            ),
            textWidget(marginTop: screenSize.size.height * 0.7, topTextFontSize: boldTextFontSize, bottomTextFontSize: textFontSize)
          ],
        ),
      ),
    );
  }
}