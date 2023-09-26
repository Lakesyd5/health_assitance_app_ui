import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/models/hospital.dart';
import 'package:health_assitance_ui/commons/models/specialities_model.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';

List<Speciality> specialties = [
  Speciality(
    color: AppColors.purple.withOpacity(0.5),
    specialityName: 'Dermatology',
    doctorsAvailable: '12 doctors',
  ),
  Speciality(
    color: Colors.orange.shade50,
    specialityName: 'Virusology',
    doctorsAvailable: '4 doctors',
    iconData: Icons.vaccines_outlined,
  ),
  Speciality(
    color: AppColors.secondaryGreen.withOpacity(0.2),
    specialityName: 'Cardiology',
    doctorsAvailable: '7 doctors',
    iconData: Icons.battery_4_bar,
  ),
  Speciality(
    color: Colors.purple.shade100,
    specialityName: 'Family medicine',
    doctorsAvailable: '15 doctors',
    iconData: Icons.medication_rounded
  ),
  Speciality(
    color: Colors.red.shade100,
    specialityName: 'Nevrology',
    doctorsAvailable: '5 doctors',
    iconData: Icons.adjust_rounded
  ),
];

List<Hospital> hospitals = [
  Hospital(
    hospitalName: 'GSH Medical',
    speciality: [
      'Family medicine',
      'Dermatology',
      'Cardiology',
      'Nevrology',
    ],
    timeOpen: '9 AM - 6 PM',
  ),
  Hospital(
    hospitalName: 'Rollcare Medicine',
    speciality: [
      'Family medicine',
      'Dermatology',
      'Cardiology',
      'Nevrology',
    ],
    timeOpen: '9 AM - 6 PM',
    icon: Icons.emergency_outlined
  ),
  Hospital(
    hospitalName: 'Ruphe Specilist',
    speciality: [
      'Virusology',
      'Dermatology',
      'Cardiology',
      'Nevrology',
    ],
    timeOpen: '9 AM - 6 PM',
    icon: Icons.route_rounded
  )
];
