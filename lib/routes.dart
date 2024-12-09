import 'package:flutter/material.dart';
import 'package:school_app/screens/login_screen.dart';
import 'package:school_app/screens/result_screen.dart';
import 'package:school_app/screens/splash_screen.dart';

import 'screens/assignment_screen.dart';
import 'screens/fee_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/time_table_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  FeeScreen.routeName: (context) => const FeeScreen(),
  AssignmentScreen.routeName: (context) => const AssignmentScreen(),
  TimeTableScreen.routeName: (context) => const TimeTableScreen(),
  ResultScreen.routeName: (context) => const ResultScreen(),
};
