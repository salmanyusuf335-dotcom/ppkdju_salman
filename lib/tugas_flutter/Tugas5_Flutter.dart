import 'package:flutter/material.dart';

void main() {
  runApp(const Tugas5_Flutter());
}

class Tugas5_Flutter extends StatelessWidget {
  const Tugas5_Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Menampilkan banner DEBUG
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xFFFCF8FF,
        ), // Background agak keunguan lembut
      ),
      home: const InteraksiFlutterPage(),
    );
  }
}

class InteraksiFlutterPage extends StatefulWidget {
  const InteraksiFlutterPage({super.key});

  @override
  State<InteraksiFlutterPage> createState() => _InteraksiFlutterPageState();
}

class _InteraksiFlutterPageState extends State<InteraksiFlutterPage> {
  // State variables
  bool _isLiked = false;
  String _inkWellStatus = "Sentuhan terdeteksi!";
  int _counter = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Interaksi Flutter',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 1. ElevatedButton Section
            const Text(
              'ini tentang ElevatedButton:',
              style: TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3E5F5), // Ungu muda lembut
                elevation: 1,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Klik Saya!',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 2. IconButton Section
            const Text(
              'ini tentang IconButton:',
              style: TextStyle(color: Colors.black87),
            ),
            IconButton(
              iconSize: 40,
              icon: Icon(
                Icons.favorite,
                color: _isLiked ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
            ),
            Text(
              _isLiked ? 'Disukai' : 'Belum Disukai',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),

            const SizedBox(height: 24),

            // 3. TextButton Section
            const Text(
              'ini tentang TextButton:',
              style: TextStyle(color: Colors.black87),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Lihat Deskripsi',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 4. InkWell Section
            const Text(
              'ini tentang InkWell:',
              style: TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 8),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  setState(() {
                    _inkWellStatus = "Sentuhan terdeteksi!";
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 36),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sentuh Kotak Ini',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(_inkWellStatus, style: const TextStyle(color: Colors.black87)),

            const SizedBox(height: 20),

            // 5. GestureDetector Section
            const Text(
              'ini tentang GestureDetector:',
              style: TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
              },
              onDoubleTap: () {
                setState(() {
                  _counter += 2;
                });
              },
              onLongPress: () {
                setState(() {
                  _counter += 3;
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 28),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Angka: $_counter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Informasi Instruksi (Tengah) & FloatingActionButton (Kanan)
            SizedBox(
              height: 70, // Memberikan area ruang untuk teks dan tombol
              child: Stack(
                children: [
                  // 1. Teks instruksi di posisi tengah rata kiri-kanan
                  const Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('• Tap = +1', style: TextStyle(fontSize: 15)),
                        Text(
                          '• Double Tap = +2',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '• Long Press = +3',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  // 2. Tombol minus berada di sebelah kanan
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xFFE1D5E7), // Ungu muda
                      elevation: 2,
                      onPressed: () {
                        setState(() {
                          if (_counter > 0) _counter--;
                        });
                      },
                      child: const Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
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
