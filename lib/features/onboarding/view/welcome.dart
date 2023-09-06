import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/features/onboarding/widgets/onboarding_circle.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: Stack(
          children: [
            PurpleCircle(
              height: 80,
              width: 80,
              top: -10,
            ),
            PurpleCircle(
              top: 200,
              height: 430,
              width: 430,
            ),
            GreenCircle(
              top: 114,
              right: 0,
              height: 130,
              width: 130,
            ),
            Positioned(
              // top: 0,
              left: 18,
              child: SemiCircle(
                width: 380,
                height: 150,
                rotationAngle: pi / 1.18,
              ),
            )
          ],
        ));
  }
}
// 870 w
// 735 h