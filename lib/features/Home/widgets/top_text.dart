import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';

Widget topSection() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AppText(
        'Specialties',
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      Row(
        children: [
          AppText(
            'All',
            color: AppColors.secondaryText,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          SizedBox(width: 7),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.secondaryText,
            size: 17,
            weight: 20,
          ),
        ],
      ),
    ],
  );
}
