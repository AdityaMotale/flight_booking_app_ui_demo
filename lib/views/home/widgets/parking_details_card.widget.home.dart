import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class SelfParkingDetailsCardWidgetHome extends StatefulWidget {
  const SelfParkingDetailsCardWidgetHome({Key? key}) : super(key: key);

  @override
  State<SelfParkingDetailsCardWidgetHome> createState() =>
      _SelfParkingDetailsCardWidgetHomeState();
}

class _SelfParkingDetailsCardWidgetHomeState
    extends State<SelfParkingDetailsCardWidgetHome> {
  final selectedTerminal = Store(0);

  @override
  void dispose() {
    selectedTerminal.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: UDesignColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Self parking",
            style: TextStyle(
              fontSize: 20,
              height: 1.25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          StoreBuilder(
            store: selectedTerminal,
            widget: (context, value) {
              return Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectedTerminal.set(0);
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: value == 0
                            ? UDesignColors.primary
                            : UDesignColors.border,
                      ),
                      child: Center(
                        child: Text(
                          "T1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                            color: value == 0
                                ? Colors.white
                                : UDesignColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      selectedTerminal.set(1);
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: value == 1
                            ? UDesignColors.primary
                            : UDesignColors.border,
                      ),
                      child: Center(
                        child: Text(
                          "T2",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                            color: value == 1
                                ? Colors.white
                                : UDesignColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          for (_ParkingVehicleDto dto in _parkingItems)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    child: SvgPicture.asset(
                      "assets/icons/${dto.icon}",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    dto.title,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.25,
                      color: UDesignColors.primary,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    dto.prices,
                    style: const TextStyle(
                      fontSize: 13,
                      height: 1.25,
                      color: UDesignColors.primary,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.info_outline_rounded,
                    color: UDesignColors.secondary,
                    size: 18,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

const List<_ParkingVehicleDto> _parkingItems = [
  _ParkingVehicleDto(
    icon: "two_wheeler_icon_dark.svg",
    title: "Two wheeler",
    prices: "AED 50 / day",
  ),
  _ParkingVehicleDto(
    icon: "car_icon_dark.svg",
    title: "Car Parking",
    prices: "AED 100 / day",
  ),
  _ParkingVehicleDto(
    icon: "ev_icon_dark.svg",
    title: "Electric Car Parking",
    prices: "AED 100 / day",
  ),
];

class _ParkingVehicleDto {
  final String icon;
  final String title;
  final String prices;

  const _ParkingVehicleDto({
    required this.icon,
    required this.title,
    required this.prices,
  });
}
