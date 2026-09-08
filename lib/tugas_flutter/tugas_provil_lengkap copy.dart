import 'package:flutter/material.dart';

void main() {
  runApp(const TemaAplikasiSaya());
}

class TemaAplikasiSaya extends StatelessWidget {
  const TemaAplikasiSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Layout Kompleks',
      theme: ThemeData(
        // Penerapan Branding: Warna Utama Aplikasi
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HalamanProfilKompleks(),
    );
  }
}

class HalamanProfilKompleks extends StatelessWidget {
  const HalamanProfilKompleks({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Scaffold: Struktur dasar halaman
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      // --- Bagian 1: Header (AppBar) ---
      appBar: AppBar(
        title: const Text(
          'Profil Member Pustaka',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        // Agar halaman bisa discroll jika konten penuh
        child: Column(
          children: [
            const SizedBox(height: 20), // Jarak atas
            // --- Bagian 2: Identitas Utama ---
            // Wajib menggunakan widget Center
            const Center(
              child: Text(
                'Andi Budiman',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),

            const SizedBox(height: 15), // Jarak vertikal
            // --- Bagian 3: Detail Kontak ---
            // Wajib menggunakan Container dan Padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                // Wajib menggunakan Row berisi Icon dan Text
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined, color: Colors.teal),
                    // Wajib menggunakan SizedBox sebagai jarak horizontal
                    SizedBox(width: 15),
                    Text(
                      'andi.budiman@email.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15), // Jarak vertikal
            // --- Bagian 4: Informasi Pendukung ---
            // Menggunakan Row untuk info sekunder
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Icon(Icons.phone_android, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text('0812-3456-7890', style: TextStyle(color: Colors.grey)),

                  // Wajib menggunakan widget Spacer untuk mendorong elemen ke kanan
                  Spacer(),

                  Text(
                    'Premium Member',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.verified, color: Colors.orange, size: 20),
                ],
              ),
            ),

            const SizedBox(height: 25), // Jarak vertikal
            // --- Bagian 5: Statistik Horizontal ---
            // Menggunakan Row untuk meletakkan kotak sejajar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Setiap kotak (Container) wajib dibungkus Expanded
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.teal[100]!),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          Text(
                            'Buku Dipinjam',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15), // Jarak antar kotak
                  // Kotak kedua, juga dibungkus Expanded agar rata
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.teal[100]!),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          Text(
                            'Skor Keaktifan',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- Bagian 6: Deskripsi Naratif ---
            // Wajib memberikan jarak vertikal dengan SizedBox
            const SizedBox(height: 25),

            // Wajib menggunakan Padding agar teks tidak menyentuh tepi
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio Singkat',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pecinta genre fiksi ilmiah dan sejarah. Sudah menjadi anggota aktif sejak tahun 2020. Memiliki target membaca 2 buku per bulan.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify, // Teks rata kanan-kiri
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30), // Jarak sebelum bagian bawah
            // --- Bagian 7: Visual Branding ---
            // Menggunakan Container dekoratif dan Image di bagian bawah
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal[700], // Warna branding
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Pustaka Digital - Selamat Membaca!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Integrasi Aset Gambar (Pastikan file ada di folder assets dan pubspec)
                  Image.asset(
                    'assets/buku_welcome.png', // SESUAIKAN DENGAN NAMA FILE ANDA
                    height: 150,
                    fit: BoxFit.contain,
                    // Menambahkan error builder jika gambar tidak ditemukan
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.book,
                        size: 100,
                        color: Colors.white30,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
