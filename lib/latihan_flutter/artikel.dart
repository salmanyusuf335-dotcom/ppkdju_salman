import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Typing Test 81',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const Artikel(),
    );
  }
}

class Artikel extends StatelessWidget {
  const Artikel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bagian paling atas halaman
      appBar: AppBar(
        title: const Text(
          'Article Salman',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        leading: const CircleAvatar(
          radius: 10,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('asset/images/Salman.jpg'),
          ),
        ),

        actions: const [
          Icon(Icons.view_headline, color: Colors.transparent, size: 50),
        ],

        centerTitle: true,
      ),

      // Isi halaman
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kategori
              Row(
                children: const [
                  Icon(Icons.circle, size: 10, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    'TECHNOLOGY',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Judul Artikel
              const Text(
                'Masa Depan AI: Bagaimana Teknologi Mengubah Cara Kita Bekerja dan Hidup',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 12),

              // Tanggal dan penulis
              Row(
                children: const [
                  Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                  SizedBox(width: 6),
                  Text(
                    '4 September 2026',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  Text('• Oleh: Salman', style: TextStyle(color: Colors.grey)),
                ],
              ),

              const SizedBox(height: 20),

              // Gambar Artikel
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'asset/images/latihan.jpg',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // Isi Artikel
              const Text(
                'Kecerdasan Buatan atau Artificial Intelligence (AI) kini bukan lagi sekadar visi masa depan. '
                'Teknologi ini telah merambah ke berbagai aspek kehidupan kita, mulai dari pekerjaan hingga hiburan. '
                'AI dapat membantu kita menyelesaikan pekerjaan kompleks dengan lebih cepat, mulai dari analisis data hingga otomatisasi tugas harian.',
                style: TextStyle(fontSize: 16, height: 1.6),
              ),

              const SizedBox(height: 15),

              const Text(
                'Dengan memanfaatkan sistem AI secara bijak, efisiensi kerja dapat meningkat pesat. '
                'Tantangan terbesar kita saat ini adalah bagaimana terus beradaptasi dan berkolaborasi '
                'secara harmonis berdampingan dengan perkembangan teknologi ini.',
                style: TextStyle(fontSize: 16, height: 1.6),
              ),

              const SizedBox(height: 20),

              // Kotak hasil typing test
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: const [
                    Text(
                      'ESTIMASI WAKTU BACA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      '3 Menit',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Artikel singkat dan padat',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
