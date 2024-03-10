import 'package:flutter/material.dart';

///
/// A singleton class holding the business logic for home view
///
class HomeController {
  // Private constructor
  HomeController._();

  // Singleton instance
  static final HomeController _instance = HomeController._();

  // Getter for the singleton instance
  factory HomeController() {
    return _instance;
  }

  final GlobalKey transportCardKey = GlobalKey();
  final GlobalKey terminalCardKey = GlobalKey();
  final GlobalKey forexCardKey = GlobalKey();
  final GlobalKey contactCardKey = GlobalKey();
}
