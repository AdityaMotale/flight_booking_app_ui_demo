import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class UsersFlightsWidgetProfile extends StatelessWidget {
  const UsersFlightsWidgetProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            DropdownButton<String>(
              value: "My Flights",
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: UDesignColors.border,
                ),
                child: Center(
                  child:
                      SvgPicture.asset("assets/icons/angle_down_icon_dark.svg"),
                ),
              ),
              underline: const SizedBox(),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 1.25,
                color: UDesignColors.primary,
              ),
              items: [
                DropdownMenuItem(
                  value: "My Flights",
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          "assets/icons/user_icon_dark.svg",
                          width: 20,
                        ),
                      ),
                      const Text(
                        "My Flights",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                          color: UDesignColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const DropdownMenuItem(
                  value: "Friend’s  flights",
                  child: Row(
                    children: [
                      Text(
                        "Friend’s  flights",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                          color: UDesignColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              onChanged: (_) {},
            ),
            const Expanded(child: SizedBox()),
            SizedBox(
              child: SvgPicture.asset("assets/icons/search_icon_dark.svg"),
            ),
            const SizedBox(width: 20),
            SizedBox(
              child: SvgPicture.asset("assets/icons/add_icon_dark.svg"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: const Text(
                "Upcoming",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: const Text(
                "Past",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: UDesignColors.border,
              ),
              child: const Text(
                "Unsorted (12)",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
