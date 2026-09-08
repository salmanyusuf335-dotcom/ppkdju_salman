void main() {
  List<String> daftar = ["Beras", "Minyak", "Saus", "Skincare"];
  int index = 0;
  daftar.forEach((barang) {
    print("Item ke-${index} ${barang}");
    index++;
  });
}
