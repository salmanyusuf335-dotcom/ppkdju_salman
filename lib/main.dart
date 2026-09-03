import 'package:flutter/material.dart';
import 'package:salman_ppkdju_app/latihan_flutter/tugas_flutter/tugas_provil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Profile(),
    );
  }
}
