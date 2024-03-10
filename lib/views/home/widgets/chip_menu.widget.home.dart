import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';

import '../../../design/design_colors.dart';
import '../controller/home_controller.dart';

class ChipMenuWidgetHome extends StatefulWidget {
  const ChipMenuWidgetHome({required this.scrollController, super.key});

  final ScrollController scrollController;

  @override
  State<ChipMenuWidgetHome> createState() => _ChipMenuWidgetHomeState();
}

class _ChipMenuWidgetHomeState extends State<ChipMenuWidgetHome> {
  final selectedIndex = Store(0);

  @override
  void dispose() {
    selectedIndex.dispose();
    widget.scrollController.dispose();

    super.dispose();
  }

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
                  widget.scrollController.animateTo(
                    _chipMenuItems[index]
                            .key
                            .currentContext!
                            .findRenderObject()!
                            .semanticBounds
                            .bottom +
                        500,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
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
                    _chipMenuItems[index].title,
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

///
/// A constant list of available chips in chip menu
///
final List<_ChipMenuItemDto> _chipMenuItems = [
  _ChipMenuItemDto(
    title: "Transport",
    key: HomeController().transportCardKey,
  ),
  _ChipMenuItemDto(
    title: "Terminal",
    key: HomeController().terminalCardKey,
  ),
  _ChipMenuItemDto(
    title: "Forex",
    key: HomeController().forexCardKey,
  ),
  _ChipMenuItemDto(
    title: "Contact info",
    key: HomeController().contactCardKey,
  ),
];

///
/// A dto class to represent item in chip menu for easy navigation
///
class _ChipMenuItemDto {
  final String title;
  final GlobalKey key;

  const _ChipMenuItemDto({required this.title, required this.key});
}
