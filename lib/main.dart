import 'package:flutter/material.dart';
import 'package:maple/features/map/widgets/map_view.dart';
import 'package:maple/theme/maple_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maple',
      theme: MapleMobileTheme.theme,
      home: const MapleMap(),
    );
  }
}
