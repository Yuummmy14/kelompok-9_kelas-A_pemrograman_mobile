void main() {
  Map<String, double> daftar_harga = {
    'Sabun': 5000,
    'Shampoo': 15000,
    'Sikat Gigi': 8000,
    'Pasta Gigi': 12000,
  };

  Map<String, int> daftar_belanjaan = {
    'Sabun': 3,
    'Shampoo': 1,
    'Pasta Gigi': 2,
    'Sikat Gigi': 1,
  };

  hitungTotalAkhir(daftar_belanjaan, daftar_harga);
}

void hitungTotalAkhir(Map<String, int> belanjaan, Map<String, double> harga) {
  double total_kotor = 0;

  belanjaan.forEach((item, jumlah) {
    if (harga.containsKey(item)) {
      total_kotor += harga[item]! * jumlah;
    }
  });

  double persentase_diskon = 0;

  if (total_kotor >= 100000) {
    persentase_diskon = 0.20;
    print('Kategori Diskon: 20% (Belanja Super Hemat)');
  } else if (total_kotor >= 50000) {
    persentase_diskon = 0.10;
    print('Kategori Diskon: 10% (Belanja Hemat)');
  } else {
    persentase_diskon = 0.0;
    print('Kategori Diskon: 0% (Belanja Reguler)');
  }

  // Menghitung potongan dan total akhir
  double nominal_diskon = total_kotor * persentase_diskon;
  double total_bersih = total_kotor - nominal_diskon;

  // 04. Menampilkan total akhir belanjaan
  print('----------------------------------');
  print('Total Belanja   : Rp ${total_kotor.toInt()}');
  print('Potongan Diskon : Rp ${nominal_diskon.toInt()}');
  print('Total Bayar     : Rp ${total_bersih.toInt()}');
  print('----------------------------------');
}