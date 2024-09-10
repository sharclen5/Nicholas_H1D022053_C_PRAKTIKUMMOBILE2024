import 'dart:io';

void main() {
  const tarifMotor = 5000;
  const tarifMobil = 7000;
  // minimal 2km
  const tarifMinimalMotor = 10000.0;
  const tarifMinimalMobil = 14000.0;

  // Mengambil input dari pengguna
  print('Pilih jenis kendaraan (motor/mobil):');
  String? jenisKendaraan = stdin.readLineSync();
  print('Masukkan jarak perjalanan (dalam KM, tanpa koma):');
  double? jarak = double.tryParse(stdin.readLineSync()!);

  // Pastikan inputnya bukan null
  if (jenisKendaraan == null || jarak == null) {
    print('Silahkan masukkan input yang benar.');
    return;
  }

  double biayaPerjalanan;

  if (jenisKendaraan.toLowerCase() == 'motor') {
    if (jarak <= 2) {
      biayaPerjalanan = tarifMinimalMotor;
    } else {
      biayaPerjalanan = tarifMotor * jarak;
    }
  } else if (jenisKendaraan.toLowerCase() == 'mobil') {
    if (jarak <= 2) {
      biayaPerjalanan = tarifMinimalMobil;
    } else {
      biayaPerjalanan = tarifMobil * jarak;
    }
  } else {
    print('Harap pastikan Anda memilih jenis transportasi yang benar.');
    return;
  }

  print('Biaya perjalanan Anda adalah: Rp$biayaPerjalanan');
}
