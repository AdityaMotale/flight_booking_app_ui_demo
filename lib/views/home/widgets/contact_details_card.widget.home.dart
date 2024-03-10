import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../design/design_colors.dart';

class ContactInfoDetailsCardWidgetHome extends StatelessWidget {
  const ContactInfoDetailsCardWidgetHome({Key? key}) : super(key: key);

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
            "Contact airport",
            style: TextStyle(
              fontSize: 20,
              height: 1.25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                "Police",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: UDesignColors.border,
                ),
                child: Center(
                  child: SizedBox(
                    height: 16,
                    child: SvgPicture.asset("assets/icons/call_icon_dark.svg"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: UDesignColors.border),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Lost and found",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: UDesignColors.border,
                ),
                child: Center(
                  child: SizedBox(
                    height: 16,
                    child: SvgPicture.asset("assets/icons/call_icon_dark.svg"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Divider(color: UDesignColors.border),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Transport",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: UDesignColors.border,
                ),
                child: Center(
                  child: SizedBox(
                    height: 16,
                    child: SvgPicture.asset("assets/icons/call_icon_dark.svg"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: UDesignColors.border),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Head office",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  color: UDesignColors.primary,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: UDesignColors.border,
                ),
                child: Center(
                  child: SizedBox(
                    height: 16,
                    child: SvgPicture.asset("assets/icons/call_icon_dark.svg"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
