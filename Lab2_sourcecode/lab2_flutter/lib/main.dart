import 'package:flutter/material.dart';
import 'screens/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Book Tickets',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
        home: const BottomBar(),
      );
}

