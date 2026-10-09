// Function 3: hitungTotal (menjumlahkan semua harga dalam List)
int hitungTotal(List<int> harga) {
  int total = 0;
  for (int item in harga) {
    total += item;
  }
  return total;
}

// Function 4: hitungPajak (menggunakan arrow function)
double hitungPajak(double total) => total * 10 / 100;

void main() {
  // 1. Deklarasi Data Toko & Pelanggan
  const String namaToko = 'Toko Metro';
  final String namaPelanggan = 'Budi';
  bool isMember = true;
  String? kodeVoucher;

  // 2. Deklarasi Daftar Barang
  List<String> namaBarang = ['Pensil', 'Buku', 'Tas'];
  List<int> hargaBarang = [5000, 15000, 120000];

  // 5. Hitung Total Belanja
  int total = hitungTotal(hargaBarang);

  // 6. Tentukan Diskon dengan if
  double diskon = 0;
  if (isMember && total >= 100000) {
    diskon = total * 10 / 100;
  }

  // 7. Hitung Pajak, Bayar, dan Kembalian
  double pajak = hitungPajak(total - diskon);
  double bayar = total - diskon + pajak;
  double uangBayar = 200000;
  double kembalian = uangBayar - bayar;

  // 8. Tentukan Level Pelanggan dengan switch
  String level;
  switch (total) {
    case >= 200000:
      level = 'Gold';
      break;
    case >= 100000:
      level = 'Silver';
      break;
    default:
      level = 'Reguler';
  }

  // 9. Cetak Struk
  print('=== $namaToko ===');
  print('Pelanggan: $namaPelanggan');

  for (int i = 0; i < namaBarang.length; i++) {
    print('${i + 1}. ${namaBarang[i]}  Rp ${hargaBarang[i]}');
  }

  print('Total    : Rp $total');
  print('Diskon   : Rp $diskon');
  print('Pajak    : Rp $pajak');
  print('Bayar    : Rp $bayar');
  print('Voucher  : ${kodeVoucher ?? "Tidak ada voucher"}');
  print('Level    : $level');
  print('Kembalian: Rp $kembalian');
}