import 'dart:math';

import 'package:flutter/material.dart';

class PurpleCircle extends StatelessWidget {
  final double? width;
  final double? height;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  const PurpleCircle({
    super.key,
    this.width,
    this.height,
    this.left,
    this.top,
    this.right,
    this.bottom,
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
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 195, 190, 226),
        ),
      ),
    );
  }
}

class GreenCircle extends StatelessWidget {
  final double? width;
  final double? height;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  const GreenCircle({
    super.key,
    this.width,
    this.height,
    this.left,
    this.top,
    this.right,
    this.bottom,
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
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 77, 147, 109),
        ),
      ),
    );
  }
}

/////
class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 140,229,21)
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final centerY = size.height;
    final radius = size.width / 2;

    final path = Path()
      ..moveTo(centerX - radius, centerY)
      ..arcTo(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        -pi, // Start angle (180 degrees in radians)
        pi,  // Sweep angle (180 degrees in radians)
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
  final double? rotationAngle;

  const SemiCircle({
    Key? key,
    this.width,
    this.height,
    this.rotationAngle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle!,
      child: CustomPaint(
        size: Size(width!, height!), // Adjust width and height as needed
        painter: SemiCirclePainter(),
      ),
    );
  }
}

// class SemiCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path()
//       ..moveTo(0, size.height)
//       ..lineTo(size.width, size.height)
//       ..lineTo(size.width, 0)
//       ..lineTo(0, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }




// class HalfCircleWidget extends StatelessWidget {
//   const HalfCircleWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: _HalfCirclePainter(),
//       child: Container(), // You can add child widgets here if needed
//     );
//   }
// }

// class _HalfCirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     final centerX = size.width / 2;
//     final centerY = 0.0;
//     final radius = size.width / 2;

//     final path = Path()
//       ..moveTo(centerX - radius, centerY)
//       ..arcTo(
//         Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
//         -pi, // Start angle (180 degrees in radians)
//         pi, // Sweep angle (180 degrees in radians)
//         true, // Counter-clockwise
//       );

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
