import 'package:ecko/ecko.dart';
import 'package:flutter/material.dart';

import 'views/Profile/profile.view.dart';

void main() {
  // initialising the ecko lib for state management
  Ecko.init(printLogs: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Booking App',
      theme: ThemeData(
        fontFamily: "UberMove",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileView(),
    );
  }
}
