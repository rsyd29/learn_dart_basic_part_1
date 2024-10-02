import 'dart:io';

void main() {
  stdout.write('Silahkan masukkan angka yang ingin dilakukan perulangan: ');
  final data = stdin.readLineSync();
  if (data != null) {
    int? hasil = int.tryParse(data);
    if (hasil != null) {
      for (int i = 1; i < hasil; i++) {
        if (i % 3 == 0 && i % 5 == 0) {
          print('Remote Worker');
        } else if (i % 3 == 0) {
          print('Remote');
        } else if (i % 5 == 0) {
          print('Worker');
        } else {
          print(i);
        }
      }
    } else {
      print('Anda masukkan bukan angka "$data"');
    }
  }
}
