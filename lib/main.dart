import 'package:facebook/core/routes/app_routes.dart';
import 'package:facebook/core/ui/screens/login_screen.dart';
import 'package:facebook/core/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.mainScreen: (context) => MainScreen(),
        AppRoutes.loginScreen: (context) => LoginScreen(),
      },
      initialRoute: AppRoutes.loginScreen,
    );
  }
}
