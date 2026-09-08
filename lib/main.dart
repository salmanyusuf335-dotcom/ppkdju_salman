import 'package:flutter/material.dart';
import 'package:salman_ppkdju_app/latihan_flutter/Tugas3_Flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: const Tugas3_Flutter(), // Ganti 'App' dengan nama kelas yang benar dari file penataangrid.dart(),
    );
  }
}
