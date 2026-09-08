void main() {
  List<int> ganjil = [];
  for (int i = 1; i <= 20; i++) {
    if (i & 1 != 0) {
      ganjil.add(i);
    }
  }

  print(ganjil.join(', '));
}
