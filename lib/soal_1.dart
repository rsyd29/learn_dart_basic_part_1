import 'dart:io';

void main() {
  stdout.write('Silahkan masukkan angka: ');
  final data = stdin.readLineSync();
  if (data != null) {
    int? hasil = int.tryParse(data);
    if (hasil != null) {
      switch (hasil % 2) {
        case 0:
          print('"$hasil" adalah bilangan "genap"');
          break;
        default:
          print('"$hasil" adalah bilang "ganjil"');
          break;
      }
    } else {
      print('Anda masukkan bukan angka "$data"');
    }
  }
}
