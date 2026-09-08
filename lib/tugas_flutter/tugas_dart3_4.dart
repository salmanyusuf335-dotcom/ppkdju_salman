void main() {
  List<String> buah = ["Apel", "Jeruk", "Mangga", "Anggur"];
  int index = 0;
  for (var n in buah) {
    if (index > 1) break;
    {
      print("Saya suka ${n}");
      index++;
    }
  }
}
