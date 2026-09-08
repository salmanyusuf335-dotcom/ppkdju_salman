void main() {
  // inisialisasi nilai awal uas dan uts
  int uts = 70;
  int uas = 75;
  double kehadiran = 75;
  double rataRata = (uts + uas) / 2;
  print("Nilai UTS: $uts");
  print("Nilai UAS: $uas");
  print("Nilai Rata-rata: $rataRata");
  print("Kehadiran: $kehadiran%");

  if (rataRata >= 70 && kehadiran >= 75 && uts >= 60 && uas >= 60) {
    print("LULUS");
  } else {
    print("Tidak Lulus");
  }
}
