import 'dart:io';
import 'dart:math';

void main() {
  // Program 1: Menentukan kelayakan memilih berdasarkan usia
  print("Masukkan usia Anda: ");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum memenuhi syarat untuk memilih.");
  }

  // Program 2: Menentukan apakah angka positif, negatif, atau nol
  print("Masukkan angka: ");
  int number = int.parse(stdin.readLineSync()!);
  switch (number.sign) {
    case 1:
      print("Angka positif");
      break;
    case -1:
      print("Angka negatif");
      break;
    case 0:
      print("Angka nol");
      break;
  }

  // Program 3: Menghitung faktorial menggunakan perulangan while
  print("Masukkan angka untuk menghitung faktorial: ");
  int num = int.parse(stdin.readLineSync()!);
  int fact = 1;
  int i = num;
  while (i > 1) {
    fact *= i;
    i--;
  }
  print("Faktorial dari $num adalah $fact");

  // Program 4: Permainan tebak angka antara 1 dan 10
  int correctNumber = 7; // Bisa diganti dengan angka acak
  int guess;
  do {
    print("Tebak angka antara 1 dan 10: ");
    guess = int.parse(stdin.readLineSync()!);
  } while (guess != correctNumber);
  print("Selamat! Anda menebak dengan benar.");

  // Program 5: Menampilkan elemen daftar dalam urutan terbalik
  List<int> numbers = [1, 2, 3, 4, 5];
  for (var n in numbers.reversed) {
    print(n);
  }

  // Program 6: Memeriksa apakah tahun adalah tahun kabisat
  print("Masukkan tahun: ");
  int year = int.parse(stdin.readLineSync()!);
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year adalah tahun kabisat.");
  } else {
    print("$year bukan tahun kabisat.");
  }

  // Program 7: Menentukan hari kerja atau akhir pekan
  print("Masukkan hari dalam seminggu: ");
  String day = stdin.readLineSync()!.toLowerCase();
  switch (day) {
    case 'senin':
    case 'selasa':
    case 'rabu':
    case 'kamis':
    case 'jumat':
      print("Hari kerja");
      break;
    case 'sabtu':
    case 'minggu':
      print("Akhir pekan");
      break;
    default:
      print("Hari tidak valid");
  }

  // Program 8: Menghitung jumlah digit dari suatu angka
  print("Masukkan angka: ");
  int inputNumber = int.parse(stdin.readLineSync()!);
  int count = 0;
  while (inputNumber != 0) {
    inputNumber ~/= 10;
    count++;
  }
  print("Jumlah digit: $count");

  // Program 9: Permainan tebak angka (1-100) dengan angka acak
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;
  int userGuess;
  do {
    print("Tebak angka antara 1 dan 100: ");
    userGuess = int.parse(stdin.readLineSync()!);
    if (userGuess < randomNumber) {
      print("Tebakan terlalu rendah.");
    } else if (userGuess > randomNumber) {
      print("Tebakan terlalu tinggi.");
    }
  } while (userGuess != randomNumber);
  print("Selamat! Anda menebak dengan benar.");

  // Program 10: Mencetak kata dan panjangnya dari daftar
  List<String> words = ["Dart", "Flutter", "Programming"];
  for (var word in words) {
    print("$word - ${word.length} karakter");
  }
}
