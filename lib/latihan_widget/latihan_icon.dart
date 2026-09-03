import 'package:flutter/material.dart';

class LatihanIcon extends StatelessWidget {
  const LatihanIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar widget icon'),
        backgroundColor: Colors.cyanAccent,
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 50),
        actions: [
          Icon(Icons.view_headline, color: Colors.greenAccent, size: 50),
        ],
      ),
    );
  }
}
