import 'package:flutter/material.dart';
import 'package:shopease/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // light theme
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: Container(),
    );
  }
}
