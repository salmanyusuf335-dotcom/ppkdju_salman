import 'package:flutter/material.dart';

class Tugas3_Flutter extends StatelessWidget {
  const Tugas3_Flutter({super.key});

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
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.red,
                        child: Image(
                          image: AssetImage('asset/images/Jakarta.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Jakarta',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Kotak 2
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blue,
                        child: Image(
                          image: AssetImage('asset/images/Bandung.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Bandung',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Kotak 3
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blue,
                        child: Image(
                          image: AssetImage('asset/images/Yogyakarta.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Yogyakarta',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Kotak 4
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blue,
                        child: Image(
                          image: AssetImage('asset/images/Semarang.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Semarang',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Kotak 5
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blue,
                        child: Image(
                          image: AssetImage('asset/images/Lampung.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Lampung',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Kotak 6
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blue,
                        child: Image(
                          image: AssetImage('asset/images/Padang.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: Text(
                                  'Padang',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
