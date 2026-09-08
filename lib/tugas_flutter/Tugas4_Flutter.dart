import 'package:flutter/material.dart';

void main() {
  runApp(const Tugas4_Flutter());
}

class Tugas4_Flutter extends StatelessWidget {
  const Tugas4_Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // AKTIFKAN BANNER DEBUG DI SINI
      title: 'Aplikasi Kualitas Udara',
      home: const Tugas4_FlutterPage(),
    );
  }
}

class Tugas4_FlutterPage extends StatelessWidget {
  const Tugas4_FlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Laporan & Riwayat Udara'),
        backgroundColor: const Color(0xFF00897B), // Warna hijau teal
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BAGIAN 1: FORM LAPORAN
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Laporan Kondisi Udara',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildTextField(
                      icon: Icons.map_outlined,
                      hint: 'Titik Lokasi (Nama Jalan/Gedung)',
                    ),
                    const SizedBox(height: 12),
                    _buildTextField(icon: Icons.air, hint: 'Skor AQI Teramati'),
                    const SizedBox(height: 12),
                    _buildTextField(
                      icon: Icons.person_outline,
                      hint: 'Nama Pelapor',
                    ),
                    const SizedBox(height: 12),
                    _buildTextField(
                      icon: Icons.notes_outlined,
                      hint: 'Catatan Tambahan (Misal: Berkabu...',
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
            const Divider(color: Colors.grey),
            const SizedBox(height: 12),

            // BAGIAN 2: RIWAYAT LAPORAN
            const Text(
              'Riwayat Laporan Terakhir',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Item List Riwayat
            _buildRiwayatCard(
              title: 'Jakarta Pusat',
              subtitle: 'AQI: 156 - Tidak Sehat.\nDilaporkan 5 menit lalu.',
              icon: Icons.warning_rounded,
              iconBgColor: Colors.red,
            ),
            _buildRiwayatCard(
              title: 'Bandung Kota',
              subtitle: 'AQI: 95 - Sedang. Dilaporkan 30 menit lalu.',
              icon: Icons.cloud,
              iconBgColor: Colors.orange,
            ),
            _buildRiwayatCard(
              title: 'Yogyakarta',
              subtitle: 'AQI: 42 - Baik. Dilaporkan 1 Hari lalu.',
              icon: Icons.check_circle,
              iconBgColor: Colors.green,
            ),
            _buildRiwayatCard(
              title: 'Semarang',
              subtitle: 'AQI: 120 - Sensitif. Dilaporkan 1...',
              icon: Icons.masks,
              iconBgColor: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }

  // Widget Pembantu untuk Input Text
  Widget _buildTextField({
    required IconData icon,
    required String hint,
    int maxLines = 1,
  }) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey[700]),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
        filled: true,
        fillColor: const Color(0xFFF1F8F5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
      ),
    );
  }

  // Widget Pembantu untuk Card Riwayat
  Widget _buildRiwayatCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color iconBgColor,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: iconBgColor,
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[600], fontSize: 12),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
