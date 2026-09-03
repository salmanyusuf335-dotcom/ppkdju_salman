import 'package:flutter/material.dart';

class LatihanScafold extends StatelessWidget {
  const LatihanScafold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Scafold'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Text(
            'Hallo ini sebuah text yang dibungku oleh widget coulmn dan scarfold',
          ),
          // Text
        ],
      ),
    );
  }
}
