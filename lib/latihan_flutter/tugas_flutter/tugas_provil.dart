import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Foto profil
          const CircleAvatar(
            radius: 100, // Lingkaran luar
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 90, // Lingkaran dalam
              backgroundImage: AssetImage('asset/images/Salman.jpg'),
            ),
          ),

          const SizedBox(height: 25),

          // Baris 1: Nama lengkap
          const Text(
            'Salman',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // Baris 2: Kota
          const Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(width: 25),
              Text('Jakarta', style: TextStyle(fontSize: 20)),
            ],
          ),

          const SizedBox(height: 10),

          const Text(
            'Seseorang yang sedang belajar Flutter dan pengembangan aplikasi.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
