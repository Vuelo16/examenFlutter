import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/screen_views/list_view.dart';
import 'package:flutter_application_examen_salud/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

            debugShowCheckedModeBanner: false,
            home: const Lista(),
            theme: AppTheme.lightTheme,

    );
  }
}
