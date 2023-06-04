import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

import 'view/main_tab/main_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Management',
      theme: ThemeData(
        primaryColor: TColor.primary
      ),
      home: const MainTabView() ,
    );
  }
}
