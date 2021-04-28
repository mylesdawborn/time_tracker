import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/landing_page.dart';
import 'package:time_tracker/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: "Time Tracker",
        theme: ThemeData(primarySwatch: Colors.red),
        home: LandingPage(),
      ),
    );
  }
}
