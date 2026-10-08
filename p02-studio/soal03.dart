Map<String, double?> hitungNilai(List<int> nilai) {
  if (nilai.isEmpty) {
    return {
      'Tertinggi': null,
      'Terendah': null,
      'Rata-rata': null,
    };
  }

  int tertinggi = nilai[0];
  int terendah = nilai[0];
  int jumlah = 0;

  for (int n in nilai) {
    if (n > tertinggi) {
      tertinggi = n;
    }
    if (n < terendah) {
      terendah = n;
    }
    jumlah += n;
  }
  double rataRata = jumlah / nilai.length;

  return {
    'tertinggi': tertinggi.toDouble(),
    'terendah': terendah.toDouble(),
    'rataRata': rataRata,
  };
}

void main() {
  var hasil = hitungNilai([80, 90, 70]);

  print('Nilai tertinggi: ${hasil['tertinggi']}');
  print('Nilai terendah: ${hasil['terendah']}');
  print('Rata-rata: ${hasil['rataRata']}');

  var kosong = hitungNilai([]);
  print('Data kosong: $kosong');
}
