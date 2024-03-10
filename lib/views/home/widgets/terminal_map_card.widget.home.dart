import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';

import '../../../design/design_colors.dart';
import '../controller/home_controller.dart';

class TerminalDetailsCardWidgetHome extends StatefulWidget {
  const TerminalDetailsCardWidgetHome({Key? key}) : super(key: key);

  @override
  State<TerminalDetailsCardWidgetHome> createState() =>
      _TerminalDetailsCardWidgetHomeState();
}

class _TerminalDetailsCardWidgetHomeState
    extends State<TerminalDetailsCardWidgetHome> {
  final selectedTerminal = Store(0);

  @override
  void dispose() {
    selectedTerminal.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: HomeController().terminalCardKey,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: UDesignColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Terminal map",
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
                  for (int i = 0; i < 3; i++)
                    InkWell(
                      onTap: () {
                        selectedTerminal.set(i);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: value == i
                              ? UDesignColors.primary
                              : UDesignColors.border,
                        ),
                        child: Center(
                          child: Text(
                            "T${i + 1}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.25,
                              color: value == i
                                  ? Colors.white
                                  : UDesignColors.primary,
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage("assets/images/map.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: UDesignColors.primary,
                ),
                child: const Center(
                  child: Text(
                    "View",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1.25,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
