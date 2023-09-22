import 'package:flutter/material.dart';

import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/app_search.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';
import 'package:health_assitance_ui/features/Home/widgets/hospital_tile.dart';
import 'package:health_assitance_ui/features/Home/widgets/pageview.dart';
import 'package:health_assitance_ui/features/Home/widgets/top_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top section of the home page
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 45),
                // Top Icon
                const Icon(
                  Icons.medical_services_rounded,
                  size: 32,
                  color: AppColors.primaryText,
                ),
                const SizedBox(height: 25),
                // Header Text
                const AppText(
                  'Health assistance',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                // Sub Text
                const AppText(
                  'We always have a doctor on duty, so you can get help within 30 minutes',
                  spacebetweentext: 1.6,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                // search bar
                searchBar(),
              ],
            ),
          ),

          // Second section
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(vertical: 50),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.basicWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    topSection(),
                    const SizedBox(height: 20),
                    pageView(),
                    const SizedBox(height: 20),
                    const AppText('Hospital near you', fontWeight: FontWeight.w600, color: AppColors.secondaryText,),
                    const SizedBox(height: 20),
                    const Expanded(child: HospitalList())
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
