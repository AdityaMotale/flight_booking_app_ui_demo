import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class BoardingDetailsCardWidgetProfile extends StatelessWidget {
  const BoardingDetailsCardWidgetProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: UDesignColors.primary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Boarding closes in 00:30",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.25,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "On time",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF909090),
                      height: 1.25,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFF2B33A),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.door_back_door_outlined,
                        color: UDesignColors.primary,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      "T20",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: UDesignColors.primary,
                        height: 1.25,
                        letterSpacing: 0.88,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: const Row(
                children: [
                  SizedBox(
                    child: Icon(
                      Icons.airplane_ticket_sharp,
                      color: UDesignColors.primary,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Boarding Pass",
                    style: TextStyle(
                      fontSize: 14,
                      color: UDesignColors.primary,
                      height: 1.25,
                      letterSpacing: 0.88,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: const Row(
                children: [
                  SizedBox(
                    child: Icon(
                      Icons.link_sharp,
                      color: UDesignColors.primary,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Share trip",
                    style: TextStyle(
                      fontSize: 14,
                      color: UDesignColors.primary,
                      height: 1.25,
                      letterSpacing: 0.88,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/menu_icon_dark.svg",
                  height: 6,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
