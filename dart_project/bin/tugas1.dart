import 'dart:io';

void main() {
  // 1. Mencetak nama dengan kutipan tunggal dan ganda
  stdout.write("Masukkan nama Anda: ");
  String name = stdin.readLineSync() ?? "User";
  print("Hello, saya \"$name\"");
  print('Hello, saya \'$name\'');

  // 2. Deklarasi konstanta bertipe int
  const int angka = 7;
  print("Nilai konstanta: $angka");

  // 3. Menghitung bunga sederhana
  stdout.write("Masukkan pokok pinjaman: ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan waktu (tahun): ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tingkat bunga: ");
  double r = double.parse(stdin.readLineSync()!);
  double bunga = (p * t * r) / 100;
  print("Bunga sederhana: $bunga");

  // 4. Mencetak persegi dari angka
  stdout.write("Masukkan angka: ");
  int angkaPersegi = int.parse(stdin.readLineSync()!);
  print("Persegi dari $angkaPersegi adalah: ${angkaPersegi * angkaPersegi}");

  // 5. Menggabungkan nama depan dan belakang
  stdout.write("Masukkan nama depan: ");
  String firstName = stdin.readLineSync() ?? "";
  stdout.write("Masukkan nama belakang: ");
  String lastName = stdin.readLineSync() ?? "";
  print("Nama lengkap: $firstName $lastName");

  // 6. Menemukan hasil bagi dan sisa
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Hasil bagi: ${a ~/ b}");
  print("Sisa bagi: ${a % b}");

  // 7. Menukar dua bilangan
  stdout.write("Masukkan angka pertama: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  int y = int.parse(stdin.readLineSync()!);
  int temp = x;
  x = y;
  y = temp;
  print("Setelah ditukar: x = $x, y = $y");

  // 8. Menghapus semua spasi dari string
  stdout.write("Masukkan sebuah kalimat: ");
  String sentence = stdin.readLineSync() ?? "";
  print("Tanpa spasi: ${sentence.replaceAll(" ", "")}");

  // 9. Mengonversi String ke int
  stdout.write("Masukkan angka dalam bentuk String: ");
  String angkaString = stdin.readLineSync() ?? "0";
  int angkaInt = int.parse(angkaString);
  print("Angka dalam bentuk int: $angkaInt");

  // 10. Menghitung jumlah pembagian tagihan
  stdout.write("Masukkan total tagihan: ");
  double totalTagihan = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan jumlah orang: ");
  int jumlahOrang = int.parse(stdin.readLineSync()!);
  double hasilPembagian = totalTagihan / jumlahOrang;
  print("Setiap orang harus membayar: $hasilPembagian");
}
