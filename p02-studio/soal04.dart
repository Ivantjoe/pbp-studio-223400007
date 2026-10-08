const Map<String, int> katalog = {
  'kopi': 8000,
  'teh': 5000,
  'jus': 12000,
  'roti': 7000,
  'susu': 6000,
};
int cariHarga(Map<String, int> katalog, String barang) {
  return katalog[barang] ?? 0;
}

int totalPesanan(
  Map<String, int> katalog,
  List<String> pesanan,
) {
  int total = 0;

  for (String barang in pesanan) {
    total += katalog[barang] ?? 0;
  }

  return total;
}
void main() {
  print('Harga kopi: ${cariHarga(katalog, 'kopi')}');
  print('Harga sate: ${cariHarga(katalog, 'sate')}');

  final List<String> pesanan = [
    'kopi',
    'teh',
    'roti',
    'sate',
  ];
  print('Total pesanan: ${totalPesanan(katalog, pesanan)}');
}
