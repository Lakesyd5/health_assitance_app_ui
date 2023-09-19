import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/data/dummy_data.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';

Widget pageView() {
  return SizedBox(
    height: 200,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Page(
        color: specialties[index].color,
        speciality: specialties[index].specialityName,
        doctors: specialties[index].doctorsAvailable,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 15),
      itemCount: specialties.length,
    ),
  );
}

class Page extends StatelessWidget {
  final Color? color;
  final String? speciality;
  final String? doctors;
  const Page({super.key, this.color, this.speciality, this.doctors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 170,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.tips_and_updates_outlined,
              size: 23,
              color: AppColors.primaryBackground,
            ),
          ),
          // const SizedBox(height: 30),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  speciality ?? '',
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 10),
                AppText(doctors ?? '', color: Colors.black87, fontWeight: FontWeight.w500,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
