Map<String, double> RatarataMahasiswa(
  Map<String, List<int>> data,
) {
  final Map<String, double> hasil = {};

  for (String nama in data.keys) {
    final List<int> nilai = data[nama]!;

    if (nilai.isEmpty) {
      hasil[nama] = 0;
    } else {
      int total = 0;

      for (int angka in nilai) {
        total += angka;
      }
      hasil[nama] = total / nilai.length;
    }
  }
  return hasil;
}

String? mahasiswaTertinggi(
  Map<String, double> rataRata,
) {
  if (rataRata.isEmpty) {
    return null;
  }
  String? namaTertinggi;
  double nilaiTertinggi = -1;

  for (String nama in rataRata.keys) {
    final double nilai = rataRata[nama]!;

    if (nilai > nilaiTertinggi) {
      nilaiTertinggi = nilai;
      namaTertinggi = nama;
    }
  }
  return namaTertinggi;
}

void main() {
  final Map<String, List<int>> data = {
    'Andi': [80, 90, 85],
    'Budi': [70, 75, 80],
    'Cindy': [],
    'Doni': [90, 95, 90],
  };
  final hasil = RatarataMahasiswa(data);
  print('Rata-rata mahasiswa:');
  hasil.forEach((nama, rata) {
    print('$nama: $rata');
  });
  print('Rata-rata tertinggi: ${mahasiswaTertinggi(hasil)}');
}