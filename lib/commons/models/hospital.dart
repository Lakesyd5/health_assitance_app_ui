import 'package:flutter/material.dart';

class Hospital {
  Hospital({
    required this.hospitalName,
    required this.speciality,
    required this.timeOpen,
    this.icon
  });

   final String hospitalName;
   final List<String> speciality;
   final String timeOpen;
   final IconData? icon;
}