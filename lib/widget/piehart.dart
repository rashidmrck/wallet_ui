import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';
import 'package:flutterui1/config/string.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          boxShadow: AppColor.circleShadow,
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                foregroundPainter: PeiChartPainter(),
                child: Container(),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  boxShadow: AppColor.circleShadow,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                  '\$1234',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PeiChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    // TODO: implement paint

    double total = 0;
    category.forEach((element) {
      total += element['amount'];
    });
    var startRadian = -pi / 2;
    for (int i = 0; i < category.length; i++) {
      var currentExpense = category[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = AppColor.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
