import 'package:flutter/material.dart';

import 'widgets/airport_details_card.widget.home.dart';
import 'widgets/header.widget.home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                AirportDetailsCardWidgetHome()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
