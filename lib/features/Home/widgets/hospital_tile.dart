import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/data/dummy_data.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
        ListTile(
          leading: Container(
            child: Icon(Icons.emergency_rounded),
          ),
        );
      },),
    );
  }
}