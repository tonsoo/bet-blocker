import 'package:bet_blocker/constants/app_colors.dart';
import 'package:bet_blocker/settings/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bet Blocker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: AppColors.cSecond,
          accentColor: AppColors.cMain,
        ),
      ),
      routerConfig: router,
    );
  }
}
