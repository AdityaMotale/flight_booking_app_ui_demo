import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class FlightDetailsCardWidgetProfile extends StatelessWidget {
  const FlightDetailsCardWidgetProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.09),
            blurRadius: 8.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Mon, 20 Dec 24",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: UDesignColors.primary,
                  height: 1.25,
                ),
              ),
              const Expanded(child: SizedBox()),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: SvgPicture.asset(
                  "assets/icons/indigo_logo.svg",
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "6E 725",
                style: TextStyle(
                  fontSize: 12,
                  color: UDesignColors.secondary,
                  height: 1.25,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: _CustomDashedBorderPainter(),
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "DEL",
                        style: TextStyle(
                          fontSize: 20,
                          color: UDesignColors.primary,
                          height: 1.25,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "08:15",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF23A049),
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "🇮🇳 New delhi",
                    style: TextStyle(
                      fontSize: 12,
                      color: UDesignColors.secondary,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
              Text(
                "2h 5m",
                style: TextStyle(
                  fontSize: 14,
                  color: UDesignColors.secondary,
                  height: 1.25,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "10:15 BOM",
                    style: TextStyle(
                      fontSize: 20,
                      color: UDesignColors.primary,
                      height: 1.25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "🇮🇳 Mumbai",
                    style: TextStyle(
                      fontSize: 12,
                      color: UDesignColors.secondary,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///
/// Widget representing dashed line created using the `CustomPainter` widget
///
/// Note: The scope of the widget is kept local because its currently not being
/// used anywhere else in the code. If its used it should be kept in its own
/// file under global widgets
///
class _CustomDashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = UDesignColors.border
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    const double dashWidth = 5.0;
    const double dashSpace = 1.5;
    const double startY = 0.0;

    double currentX = 0.0;
    bool drawDash = true;
    while (currentX < size.width) {
      if (drawDash) {
        canvas.drawLine(Offset(currentX, startY),
            Offset(currentX + dashWidth, startY), paint);
      }
      currentX += dashWidth + dashSpace;
      drawDash = !drawDash;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
