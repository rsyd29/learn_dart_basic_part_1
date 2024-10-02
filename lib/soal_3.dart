import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Guess The Number');
  bool correctGuest = false;
  int numberOfTrials = 0;
  Random random = Random();
  int randomNumber = (random.nextInt(100) + 1);

  while (!correctGuest) {
    final data = stdin.readLineSync();
    if (data != null) {
      int? hasil = int.tryParse(data);
      if (hasil != null) {
        if (hasil == randomNumber) {
          numberOfTrials += 1;
          print(
              'Selamat jawaban anda benar, anda sudah melakukan $numberOfTrials percobaan');
          correctGuest = true;
        } else if (hasil < 1 || hasil > 100) {
          print('Jawaban anda tidak valid');
        } else {
          numberOfTrials += 1;
          print(
              'Jawaban anda ${hasil > randomNumber ? 'terlalu besar' : 'terlalu kecil'} dari jawaban yang benar');
        }
      } else {
        print('Anda masukkan bukan angka "$data"');
      }
    }
  }
}
