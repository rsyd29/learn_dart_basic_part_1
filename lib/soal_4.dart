import 'dart:io';

void main() {
  int balance = 0;
  bool running = true;

  while (running) {
    print('--- E-Wallet Sederhana ---');
    print('1. Cek Saldo');
    print('2. Top Up');
    print('3. Belanja');
    print('4. Keluar');
    stdout.write('Pilih opsi: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // Opsi Cek Saldo
        print('Saldo anda adalah Rp. $balance');
        break;
      case '2':
        // Menu Top Up
        stdout.write('Masukkan jumlah top up: ');
        int? topUpAmount = int.tryParse(stdin.readLineSync()!);
        if (topUpAmount != null && topUpAmount > 0) {
          balance += topUpAmount;
          print('Top up berhasil! Saldo sekarang adalah Rp. $balance');
        } else {
          print('Jumlah tidak valid.');
        }
        break;
      case '3':
        // Menu Belanja
        stdout.write('Masukkan jumlah belanja: ');
        int? purchaseAmount = int.tryParse(stdin.readLineSync()!);
        if (purchaseAmount != null && purchaseAmount > 0) {
          if (purchaseAmount <= balance) {
            balance -= purchaseAmount;
            print('Belanja berhasil! Saldo sisa adalah Rp. $balance');
          } else {
            print('Saldo tidak mencukupi.');
          }
        } else {
          print('Jumlah tidak valid.');
        }
        break;
      case '4':
        // Menu Keluar
        running = false;
        print('Terima kasih telah menggunakan e-wallet.');
        break;
      default:
        print('Pilihan tidak valid.');
    }

    print('');
  }
}
