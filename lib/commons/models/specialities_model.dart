import 'package:flutter/material.dart';

class Speciality {
  Speciality({
    required this.color,
    required this.specialityName,
    required this.doctorsAvailable,
    this.iconData,
  });

  final Color color;
  final String specialityName;
  final String doctorsAvailable;
  final IconData? iconData;
}
