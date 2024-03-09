import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';

import '../../../design/design_colors.dart';

class ChipMenuWidgetHome extends StatefulWidget {
  const ChipMenuWidgetHome({super.key});

  @override
  State<ChipMenuWidgetHome> createState() => _ChipMenuWidgetHomeState();
}

class _ChipMenuWidgetHomeState extends State<ChipMenuWidgetHome> {
  final selectedIndex = Store(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _chipMenuItems.length,
        itemBuilder: (context, index) {
          return StoreBuilder(
            store: selectedIndex,
            widget: (context, value) {
              return InkWell(
                onTap: () {
                  selectedIndex.set(index);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: value == index
                        ? UDesignColors.primary
                        : UDesignColors.border,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _chipMenuItems[index],
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.2,
                      color:
                          value == index ? Colors.white : UDesignColors.primary,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

const List<String> _chipMenuItems = [
  "Transport",
  "Terminal",
  "Forex",
  "Contact info",
];
