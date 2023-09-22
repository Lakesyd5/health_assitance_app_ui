import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/data/dummy_data.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hospitals.length,
      padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
      itemBuilder: (context, index) {
        final hospital = hospitals[index];

        return ListTile(
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.only(bottom: 10),
          titleAlignment: ListTileTitleAlignment.bottom,
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primaryBackground,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.emergency_rounded,
              size: 38,
              color: AppColors.basicWhite,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                hospital.hospitalName,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              AppText(
                hospital.timeOpen,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              )
            ],
          ),
          subtitle: AppText(
            hospital.speciality.join(', '),
            color: AppColors.secondaryText,
            fontSize: 12,
          ),
        );
      },
    );
  }
}
