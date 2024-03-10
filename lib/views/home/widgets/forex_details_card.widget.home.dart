import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class ForexDetailsCardWidgetHome extends StatefulWidget {
  const ForexDetailsCardWidgetHome({Key? key}) : super(key: key);

  @override
  State<ForexDetailsCardWidgetHome> createState() =>
      _ForexDetailsCardWidgetHomeState();
}

class _ForexDetailsCardWidgetHomeState
    extends State<ForexDetailsCardWidgetHome> {
  final selectedItem = Store(0);

  @override
  void dispose() {
    selectedItem.dispose();

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
            "Foreign exchange",
            style: TextStyle(
              fontSize: 20,
              height: 1.25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          for (_ForexExchangeDto dto in _forexExchangesList)
            StoreBuilder(
              store: selectedItem,
              widget: (context, value) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          dto.title,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.25,
                            color: UDesignColors.primary,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {
                            selectedItem.set(dto.index);
                          },
                          child: SizedBox(
                            width: 20,
                            child: SvgPicture.asset(
                              "assets/icons/angle_${value == dto.index ? "up" : "down"}_icon_dark.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    value == dto.index
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              dto.address,
                              style: const TextStyle(
                                fontSize: 12,
                                height: 1.25,
                                color: UDesignColors.secondary,
                              ),
                            ),
                          )
                        : const SizedBox(height: 5),
                    dto.index < 2
                        ? const Divider(color: UDesignColors.border)
                        : const SizedBox(),
                    dto.index < 2
                        ? const SizedBox(height: 10)
                        : const SizedBox(),
                  ],
                );
              },
            ),
        ],
      ),
    );
  }
}

const List<_ForexExchangeDto> _forexExchangesList = [
  _ForexExchangeDto(index: 0, title: "Travelex"),
  _ForexExchangeDto(index: 1, title: "Al Ansari Exchange"),
  _ForexExchangeDto(index: 2, title: "Emirates NBD"),
];

class _ForexExchangeDto {
  final int index;
  final String title;
  final String address;

  const _ForexExchangeDto({
    required this.index,
    required this.title,
    // ignore: unused_element
    this.address =
        "Terminal 3- \nAirside Dept Downtown, Concourse B,\nTerminal 3, beside Winston Smoking room",
  });
}
