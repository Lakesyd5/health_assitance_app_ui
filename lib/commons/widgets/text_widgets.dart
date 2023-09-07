import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? spacebetweentext;

  const AppText(
    this.text, {
    super.key,
    this.fontSize = 16,
    this.color = AppColors.primaryText,
    this.fontWeight = FontWeight.normal,
    this.spacebetweentext,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sora(
        height: spacebetweentext,
        fontSize: 16,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
