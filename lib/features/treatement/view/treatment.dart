import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';
import 'package:health_assitance_ui/features/treatement/widgets/calendar.dart';

class Treatment extends StatelessWidget {
  const Treatment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.basicWhite,
        foregroundColor: AppColors.primaryBackground,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month_outlined), iconSize: 30,)
        ],
      ),
      backgroundColor: AppColors.basicWhite,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText('Treatment plan', color: Colors.black, fontSize: 26, fontWeight: FontWeight.w700,),
            SizedBox(height: 25),
            Calendar()
          ],
        ),
      ),
    );
  }
}