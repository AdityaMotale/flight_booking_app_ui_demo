import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../design/design_colors.dart';
import '../Profile/profile.view.dart';
import 'controller/home_controller.dart';
import 'widgets/airport_details_card.widget.home.dart';
import 'widgets/chip_menu.widget.home.dart';
import 'widgets/contact_details_card.widget.home.dart';
import 'widgets/forex_details_card.widget.home.dart';
import 'widgets/header.widget.home.dart';
import 'widgets/parking_details_card.widget.home.dart';
import 'widgets/taxi_service_card.widget.home.dart';
import 'widgets/terminal_map_card.widget.home.dart';
import 'widgets/transport_details_card.widget.home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // initialising the home controller singleton class
    HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidgetHome(),
                const SizedBox(height: 20),
                const AirportDetailsCardWidgetHome(),
                const SizedBox(height: 20),
                ChipMenuWidgetHome(
                  scrollController: _scrollController,
                ),
                const SizedBox(height: 20),
                const TaxiServiceWidgetHome(),
                const SizedBox(height: 20),
                const TransportDetailsCardWidgetHome(),
                const SizedBox(height: 20),
                const SelfParkingDetailsCardWidgetHome(),
                const SizedBox(height: 20),
                const TerminalDetailsCardWidgetHome(),
                const SizedBox(height: 20),
                const ForexDetailsCardWidgetHome(),
                const SizedBox(height: 20),
                const ContactInfoDetailsCardWidgetHome(),
                const SizedBox(height: 40),
                const _BottomActions(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomActions extends StatelessWidget {
  const _BottomActions();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileView()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: UDesignColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/direction_icon.svg"),
                  const SizedBox(width: 10),
                  const Text(
                    "Get direction",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileView()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: UDesignColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/call_icon.svg"),
                  const SizedBox(width: 10),
                  const Text(
                    "Call airport",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
