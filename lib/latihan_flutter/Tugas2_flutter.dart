import 'package:flutter/material.dart'; // Mengambil library Flutter untuk membuat tampilan

class Tugas2_flutter extends StatelessWidget {
  // Membuat halaman Tugas2flutter
  const Tugas2_flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fungsi untuk membuat tampilan halaman
    return Scaffold(
      // ================= APP BAR =================
      appBar: AppBar(
        // Judul halaman
        title: Text(
          'Detail Toko',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Judul berada di tengah
        centerTitle: true,

        // Warna AppBar
        backgroundColor: Color.fromARGB(255, 91, 164, 191),

        // Menghilangkan bayangan AppBar
        elevation: 0,
      ),

      // ================= BODY =================
      backgroundColor: Color(0xFFD6E4F5),

      body: SingleChildScrollView(
        // Supaya halaman bisa di-scroll
        child: Column(
          children: [
            // ================= NAMA TOKO =================
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Harmony Mystic Emporium',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // ================= EMAIL =================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 111, 144),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.white),

                  SizedBox(width: 10),

                  Text(
                    'salmanyusuf335@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // ================= TELEPON DAN LOKASI =================
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nomor telepon
                  Row(
                    children: [
                      Icon(Icons.phone),

                      SizedBox(width: 10),

                      Text('083841111864', style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  // Lokasi
                  Row(
                    children: [
                      Icon(Icons.location_on),

                      SizedBox(width: 10),

                      Text(
                        'Jakarta, Indonesia',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ================= STATISTIK =================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Statistik buku
                Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFBBD1EE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '300+',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'books sold per month',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                // Statistik rating
                Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFBBD1EE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '4.5/5 ⭐',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'rating by user',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // ================= DESKRIPSI =================
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Harmony Mystic Emporium adalah toko buku bernuansa magis,'
                'yang menghadirkan koleksi novel fantasi, buku misteri, mitologi,'
                'spiritualitas, hingga literatur klasik dalam sauasana hangat,'
                'dan estetik. Dengan sentuhan tema celestial dan enchanted, toko,'
                'keajaiban. Selain buku, Harumony Mystic Emporium juga,'
                'menawarkan berbagai aksesori dan dekorasi bertema mystic yang,'
                'menambah pengalaman membaca terasa lebih unik dan memikat.,'
                ' ✨',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, height: 1.6),
              ),
            ),

            // ================= GAMBAR / LOGO =================
            Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'asset/images/image.png',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // ================= JARAK BAWAH =================
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
