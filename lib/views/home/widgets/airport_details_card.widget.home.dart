import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class AirportDetailsCardWidgetHome extends StatelessWidget {
  const AirportDetailsCardWidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/flagged/photo-1559717201-fbb671ff56b7?w=400",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.height * 0.35) / 1.8,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (_CardMenuDetailsDto dto in _cardMenuList)
                      Column(
                        children: [
                          SizedBox(
                            width: 16,
                            height: 16,
                            child: SvgPicture.asset(
                              "assets/icons/${dto.icon}",
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            dto.title,
                            style: const TextStyle(
                              color: UDesignColors.primary,
                              fontSize: 16,
                              height: 1.25,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            dto.subtitle,
                            style: const TextStyle(
                              color: UDesignColors.secondary,
                              fontSize: 12,
                              height: 1.25,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                const Divider(color: UDesignColors.border, height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/direction_icon_blue.svg"),
                            const SizedBox(width: 10),
                            const Text(
                              "Get direction",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.25,
                                color: UDesignColors.primary,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: UDesignColors.border,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/call_icon_blue.svg"),
                          const SizedBox(width: 10),
                          const Text(
                            "Call airport",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.25,
                              color: UDesignColors.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///
/// list of available menus in the details card
///
const List<_CardMenuDetailsDto> _cardMenuList = [
  _CardMenuDetailsDto(
    icon: "cloud_dark_icon.svg",
    title: "19 C",
    subtitle: "Cloudy",
  ),
  _CardMenuDetailsDto(
    icon: "calendar_dark_icon.svg",
    title: "30 Jan",
    subtitle: "Mon",
  ),
  _CardMenuDetailsDto(
    icon: "time_dark_icon.svg",
    title: "8:45 PM",
    subtitle: "GMT+4",
  ),
  _CardMenuDetailsDto(
    icon: "currency_dark_icon.svg",
    title: "AED",
    subtitle: "1\$ = 3.67AED",
  ),
];

///
/// A data transfer object class to represent item in airport details card menu
///
class _CardMenuDetailsDto {
  final String icon;
  final String title;
  final String subtitle;

  const _CardMenuDetailsDto({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}
