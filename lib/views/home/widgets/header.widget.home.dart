import 'package:flutter/material.dart';

import '../../../design/design_colors.dart';
import '../data_modals/airport_dm.home.dart';

class HeaderWidgetHome extends StatelessWidget {
  const HeaderWidgetHome({Key? key}) : super(key: key);

  // data model class holding the airport details
  final airportDm = const AirportDm();

  // text style for the subtitle text
  final subtitleStyle = const TextStyle(
    fontSize: 14,
    height: 1.16,
    color: UDesignColors.secondary,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          airportDm.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 1.2,
            color: UDesignColors.primary,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(airportDm.city, style: subtitleStyle),
            const SizedBox(width: 8),
            Text(
              ".",
              style: subtitleStyle,
            ),
            const SizedBox(width: 8),
            Text(airportDm.country, style: subtitleStyle),
          ],
        ),
      ],
    );
  }
}
