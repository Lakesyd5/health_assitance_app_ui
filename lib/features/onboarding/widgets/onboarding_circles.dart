import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:health_assitance_ui/commons/widgets/text_widgets.dart';

class Circle extends StatelessWidget {
  final double? width;
  final double? height;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final Color? color;

  const Circle({
    super.key,
    this.width,
    this.height,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.color = AppColors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}

// Semi circle widget
class _SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.secondaryGreen
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final centerY = size.height;
    final radius = size.width / 2;

    final path = Path()
      ..moveTo(centerX - radius, centerY)
      ..arcTo(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        -pi, // Start angle (180 degrees in radians)
        pi, // Sweep angle (180 degrees in radians)
        true, // Counter-clockwise
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class SemiCircle extends StatelessWidget {
  final double? width;
  final double? height;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final double? rotationAngle;

  const SemiCircle({
    Key? key,
    this.width,
    this.height,
    this.top,
    this.bottom,
    this.right,
    this.left,
    this.rotationAngle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: Transform.rotate(
        angle: rotationAngle!,
        child: CustomPaint(
          size: Size(width ?? 50, height ?? 50), // Adjust width and height as needed
          painter: _SemiCirclePainter(),
        ),
      ),
    );
  }
}

// Square widget...
class Square extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final double? rotationAngle;

  const Square({
    super.key,
    this.height,
    this.width,
    this.color,
    this.top,
    this.bottom,
    this.right,
    this.left,
    this.rotationAngle,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: Transform.rotate(
        angle: rotationAngle!,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color,
          ),
        ),
      ),
    );
  }
}

// Text widget
Container textWidget({double? topTextFontSize, double? bottomTextFontSize, double? marginTop}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 35),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: marginTop),
        // Bold text
        Text(
          'Taking care of yourself is easy',
          style: GoogleFonts.sora(
            fontSize: topTextFontSize,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
          ),
        ),
        const SizedBox(height: 10),
        // sub text
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AppText(
            'Any treatment begins with the consultation of a qualified specialist',
            fontWeight: FontWeight.w400,
            fontSize: bottomTextFontSize,
            spacebetweentext: 1.8,
          ),
        ),
        const SizedBox(height: 25),
        // Get started button
        const AppText('Get started', fontWeight: FontWeight.bold, fontSize: 17),
        const SizedBox(height: 10),
        _line(height: 3, width: 90)
      ],
    ),
  );

}

Container _line({
  double? height,
  double? width,
}) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
      shape: BoxShape.rectangle,
      color: AppColors.secondaryGreen
    ),
  );
}