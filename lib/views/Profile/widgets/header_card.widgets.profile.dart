import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class HeaderCardWidgetProfile extends StatelessWidget {
  const HeaderCardWidgetProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
        bottom: (MediaQuery.of(context).size.height * 0.25) * 0.55,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bharat_map.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=50",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flights",
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.2,
                        color: UDesignColors.secondary,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "04",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        color: UDesignColors.primary,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Countries",
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.2,
                        color: UDesignColors.secondary,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "06",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        color: UDesignColors.primary,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.2,
                        color: UDesignColors.secondary,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "4,287 km",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        color: UDesignColors.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/icons/top_left_angle_icon_dark.svg",
              height: 36,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/icons/bottom_right_angle_icon_dark.svg",
              height: 36,
            ),
          )
        ],
      ),
    );
  }
}
