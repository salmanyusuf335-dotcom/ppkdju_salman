/// Menampilkan seluruh biodata anggota
void tampilkanBiodata(
  String nama,
  int umur,
  double tinggi,
  bool status,
  List<String> buku,
  Map<String, String> info,
) {
  print(
    'Nama: $nama\nUmur: $umur tahun\nTinggi: $tinggi cm\nStatus: ${status ? "Aktif" : "Non-Aktif"}',
  );
  print('Buku Favorit: ${buku.join(', ')}');

  /* Menampilkan detail info tambahan */
  info.forEach((k, v) => print('$k: $v'));
}

void main() {
  // Inisialisasi variabel anggota
  String nama = "Salman";
  int umur = 19;
  double tinggiBadan = 170.5;
  bool isAktif = true;
  List<String> bukuFavorit = ["Laskar Pelangi"];

  /* Map informasi tambahan */
  Map<String, String> infoTambahan = {
    'Alamat': 'Jakarta',
    'Profesi': 'Pelajar',
  };

  tampilkanBiodata(nama, umur, tinggiBadan, isAktif, bukuFavorit, infoTambahan);
}
