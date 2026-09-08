import 'package:flutter/material.dart';

class LatihanX extends StatelessWidget {
  const LatihanX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan singleChildScrollView'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('latihan singleChildScrollView'),
            SizedBox(height: 800),
            Text('Text ini akan overflow di emulator'),
          ],
        ),
      ),
    );
  }
}
