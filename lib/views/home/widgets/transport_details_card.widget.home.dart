import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class TransportDetailsCardWidgetHome extends StatelessWidget {
  const TransportDetailsCardWidgetHome({Key? key}) : super(key: key);

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
            "Public transport",
            style: TextStyle(
              fontSize: 20,
              height: 1.25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/${_transportItems[0].icon}",
                ),
              ),
              const SizedBox(width: 10),
              Text(
                _transportItems[0].title,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                _transportItems[0].timings,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.25,
                  color: UDesignColors.secondary,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/arrow_icon_dark.svg",
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: UDesignColors.border),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/${_transportItems[1].icon}",
                ),
              ),
              const SizedBox(width: 10),
              Text(
                _transportItems[1].title,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                _transportItems[1].timings,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.25,
                  color: UDesignColors.secondary,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                child: SvgPicture.asset(
                  "assets/icons/arrow_icon_dark.svg",
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}

const List<_TransportServiceDto> _transportItems = [
  _TransportServiceDto(
    icon: "metro_icon_dark.svg",
    title: "Metro",
    timings: "6am - 10pm",
  ),
  _TransportServiceDto(
    icon: "bus_icon_dark.svg",
    title: "Bus",
    timings: "available 24hrs",
  ),
];

class _TransportServiceDto {
  final String icon;
  final String title;
  final String timings;

  const _TransportServiceDto({
    required this.icon,
    required this.title,
    required this.timings,
  });
}
