import 'package:flutter/material.dart';

import 'widgets/airport_details_card.widget.home.dart';
import 'widgets/chip_menu.widget.home.dart';
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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidgetHome(),
                SizedBox(height: 20),
                AirportDetailsCardWidgetHome(),
                SizedBox(height: 20),
                ChipMenuWidgetHome(),
                SizedBox(height: 20),
                TaxiServiceWidgetHome(),
                SizedBox(height: 20),
                TransportDetailsCardWidgetHome(),
                SizedBox(height: 20),
                SelfParkingDetailsCardWidgetHome(),
                SizedBox(height: 20),
                TerminalDetailsCardWidgetHome(),
                SizedBox(height: 20),
                ForexDetailsCardWidgetHome(),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
