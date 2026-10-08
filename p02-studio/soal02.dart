double nilaiAkhir(double nts, double nas) {
  return nts * 0.4 + nas * 0.6;
}

String huruf(double nilai) {
  if (nilai >= 90){
    return 'A';
  } else if (nilai >= 80){
    return 'B';
  } else if (nilai >= 70){
    return 'C';
  } else if (nilai >= 60){
    return 'D';
  } else { 
    return 'E';
  }
}
void main() {
  final double nilai1 = nilaiAkhir(100, 90);
  final double nilai2 = nilaiAkhir(80, 70);
  final double nilai3 = nilaiAkhir(60, 50);

  print('Nilai akhir: $nilai1, Huruf: ${huruf(nilai1)}');
  print('Nilai akhir: $nilai2, Huruf: ${huruf(nilai2)}');
  print('Nilai akhir: $nilai3, Huruf: ${huruf(nilai3)}');
}