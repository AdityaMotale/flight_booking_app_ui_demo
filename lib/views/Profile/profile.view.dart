import 'package:flutter/material.dart';

import '../../design/design_colors.dart';
import 'widgets/boarding_details_card.widget.profile.dart';
import 'widgets/flight_details_card.widget.profile.dart';
import 'widgets/header_card.widgets.profile.dart';
import 'widgets/users_flights.widget.profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderCardWidgetProfile(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UsersFlightsWidgetProfile(),
                    SizedBox(height: 20),
                    FlightDetailsCardWidgetProfile(),
                    SizedBox(height: 20),
                    BoardingDetailsCardWidgetProfile(),
                    SizedBox(height: 20),
                    Divider(thickness: 2.5, color: UDesignColors.border),
                    SizedBox(height: 20),
                    FlightDetailsCardWidgetProfile(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
