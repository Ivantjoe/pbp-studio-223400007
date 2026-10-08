class Kehadiran {
  final String anggota;
  final int jamMasuk;
  final int menitMasuk;
  
  Kehadiran({
    required this.anggota,
    required this.jamMasuk,
    required this.menitMasuk,
  });

  Kehadiran.dariJson(Map<String, dynamic> json)
      : anggota = json['anggota'],
        jamMasuk = json['jam'],
        menitMasuk = json['menit'];

  bool get terlambat {
    int waktuMasuk = jamMasuk * 60 + menitMasuk;
    int batasWaktu = 8 * 60 + 15;

    return waktuMasuk > batasWaktu;
  }
}
void main() {
  var rina = Kehadiran(
    anggota: 'Rina',
    jamMasuk: 8,
    menitMasuk: 10,
  );

  var dataBudi = {
    'anggota': 'Budi',
    'jam': 8,
    'menit': 40,
  };

  var budi = Kehadiran.dariJson(dataBudi);

  print('${rina.anggota} terlambat? ${rina.terlambat}');
  print('${budi.anggota} terlambat? ${budi.terlambat}');
}