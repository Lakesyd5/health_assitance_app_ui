import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';

Widget searchBar() {
  return Container(
    height: 50,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.2),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: const Row(
      children: [
        Icon(
          CupertinoIcons.search,
          color: AppColors.primaryText,
          weight: 5.0,
        ),
        SizedBox(
          height: 50,
          width: 280,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 8, left: 10),
              hintText: 'Search by name or speciality...',
              hintStyle: TextStyle(color: AppColors.primaryText, fontSize: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
