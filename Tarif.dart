import 'dart:io';

void main() {
  // Menentukan tarif per kilometer
  const tarifMotorPerKm = 5000;
  const tarifMobilPerKm = 7000;
  const tarifMinimalMotor = 10000.0; // tarif minimal untuk motor (2 km)
  const tarifMinimalMobil = 14000.0; // tarif minimal untuk mobil (2 km)

  // Mengambil input dari pengguna
  print('Pilih jenis transportasi (motor/mobil):');
  String? jenisTransportasi = stdin.readLineSync();

  print('Masukkan jarak perjalanan (dalam km):');
  double? jarak = double.tryParse(stdin.readLineSync()!);

  // Validasi input
  if (jenisTransportasi == null || jarak == null) {
    print('Input tidak valid. Silakan coba lagi.');
    return;
  }

  double biayaPerjalanan;

  if (jenisTransportasi.toLowerCase() == 'motor') {
    if (jarak <= 2) {
      biayaPerjalanan = tarifMinimalMotor;
    } else {
      biayaPerjalanan = tarifMotorPerKm * jarak;
    }
  } else if (jenisTransportasi.toLowerCase() == 'mobil') {
    if (jarak <= 2) {
      biayaPerjalanan = tarifMinimalMobil;
    } else {
      biayaPerjalanan = tarifMobilPerKm * jarak;
    }
  } else {
    print('Jenis transportasi tidak valid.');
    return;
  }

  print('Biaya perjalanan Anda adalah: Rp$biayaPerjalanan');
}
