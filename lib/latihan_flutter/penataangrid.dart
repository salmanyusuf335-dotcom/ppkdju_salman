import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext c) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Registrasi & Edukasi'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 148, 230),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Form Registrasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ...[
                'Nama Pengguna',
                'Email Pengguna',
                'Telephone Pengguna',
                'Input Password',
                'Konfirmasi Password',
              ].map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    obscureText: e.contains('Password'),
                    decoration: InputDecoration(
                      hintText: e,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 233, 240, 239),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Wilayah Pemantauan Kualitas Udara Terdekat',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true, // Membuat GridView menyesuaikan tinggi kon
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3, // Menampilkan 2 kolom kotak menyamping
                crossAxisSpacing: 10, // Jarak horizontal antar kotak
                mainAxisSpacing: 10, // Jarak vertikal antar kotak
                padding: const EdgeInsets.all(
                  10,
                ), // Jarak luar di sekeliling grid
                children: [
                  // Kotak 1
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Jakarta.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Jakarta',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kotak 2
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Bandung.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Bandung',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kotak 3
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Yogyakarta.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Yogyakarta',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kotak 4
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Semarang.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Semarang',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kotak 5
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Lampung.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Lampung',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kotak 6
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage('asset/images/Padang.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          'Padang',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
