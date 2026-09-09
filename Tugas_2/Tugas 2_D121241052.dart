void main() {
  Map<String, double> daftarHarga = {
    'Beras': 13000,
    'Gula': 15000,
    'Minyak Goreng': 21000,
    'Telur': 30000,
    'Sabun': 5000,
  };

  Map<String, int> daftarBelanjaan = {
    'Beras': 2,
    'Gula': 1,
    'Minyak Goreng': 3,
    'Telur': 1,
  };

  print('STRUK BELANJA');

  double totalBelanja = 0;

  daftarBelanjaan.forEach((namaBarang, jumlah) {
    double? harga = daftarHarga[namaBarang];

    if (harga != null) {
      double subtotal = harga * jumlah;
      totalBelanja += subtotal;

      print(
        '$namaBarang x$jumlah = Rp${subtotal.toStringAsFixed(0)}',
      );
    } else {
      print('$namaBarang tidak ditemukan di daftar harga!');
    }
  });

  print('------------------------');
  print('Total Belanja: Rp${totalBelanja.toStringAsFixed(0)}');

  double persenDiskon = 0;

  if (totalBelanja >= 100000) {
    persenDiskon = 0.20;
  } else if (totalBelanja >= 50000) {
    persenDiskon = 0.10;
  } else if (totalBelanja >= 20000) {
    persenDiskon = 0.05;
  } else {
    persenDiskon = 0.0;
  }

  double nilaiDiskon = totalBelanja * persenDiskon;

  double totalAkhir = totalBelanja - nilaiDiskon;

  print('Diskon (${(persenDiskon * 100).toStringAsFixed(0)}%): '
  '-Rp${nilaiDiskon.toStringAsFixed(0)}');
  print('TOTAL AKHIR: Rp${totalAkhir.toStringAsFixed(0)}');
   print('------------------------');
}