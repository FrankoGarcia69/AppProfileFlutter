import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/login_page.dart';
import 'package:flutter_application_2/src/pages/profile_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: const MyAppLogin(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/profile': 
          return MaterialPageRoute(builder: (_) => const ProfilePage());
          case '/login': 
          return MaterialPageRoute(builder: (_) => const MyAppLogin());
          default:
          return MaterialPageRoute(builder: (_) => const MyAppLogin());
        }
      },
    );
  }
}
