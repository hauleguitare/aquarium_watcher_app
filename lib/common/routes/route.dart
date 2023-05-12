import 'package:aquarium_watcher_app/features/dashboard/view/screen/dashboard_screen.dart';
import 'package:aquarium_watcher_app/features/login/view/screen/login_screen.dart';
import 'package:aquarium_watcher_app/features/splash_screen/view/widgets/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, Widget Function(BuildContext)> ApplicationRoutes = {
  "/" : (context) => const DashboardScreen(),
  "/login": (context) => const LoginScreen(),
  "/splash": (context) => const SplashScreen()
};