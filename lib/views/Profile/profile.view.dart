import 'package:flutter/material.dart';

import 'widgets/header_card.widgets.profile.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
