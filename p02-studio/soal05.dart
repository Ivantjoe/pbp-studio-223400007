String kartu({
  required String nama,
  required int nilai,
  String? catatan,
  bool tampilkanNilai = true,
}) {
  String hasil = 'Nama: $nama';

  if (tampilkanNilai) {
    hasil += ', Nilai: $nilai';
  }
  if (catatan != null) {
    hasil += ', Catatan: $catatan';
  }
  return hasil;
}

void main() {
  print(kartu(
    nama: 'Andi',
    nilai: 90,
  ));

  print(kartu(
    nama: 'Benny',
    nilai: 80,
    catatan: 'Nilai bagus',
  ));

  print(kartu(
    nama: 'Cindy',
    nilai: 75,
    tampilkanNilai: false,
  ));

  print(kartu(
    nama: 'Donny',
    nilai: 85,
    catatan: 'Perlu dipertahankan',
    tampilkanNilai: true,
  ));
}
