import 'package:flutter/material.dart';
import 'config/environment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(' Hi \n Environment: ${EnvironmentConfig.current.name}'),
        ),
      ),
    );
  }
}
