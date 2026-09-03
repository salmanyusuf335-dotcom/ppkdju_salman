import 'package:flutter/material.dart';

class LatihanColumn extends StatelessWidget {
  const LatihanColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Belajar widget Column'),
      ),
      body: Column(
        children: [
          Text('Hallow ini baris Pertama'),
          Text('Hallow ini baris Kedua'),
          Text('Hallow ini baris Ketiha'),
          Text('Hallow ini baris Keempat'),
          Text('Hallow ini baris kelima'),
          Text('Hallow ini baris keenam'),
          Text('Hallow ini baris ketujuh'),
        ],
      ),
    );
  }
}
