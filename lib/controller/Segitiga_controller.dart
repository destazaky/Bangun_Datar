import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int alas = 0;
  int tinggi = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung =  alas * tinggi / 2;
    hasil.value = "Hasil perhitungan luas dari 1/2 x $alas x $tinggi = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = alas + tinggi + tinggi;
    hasil.value = "Hasil perhitungan keliling dari $alas + $tinggi + $tinggi = $hitung";
    isHitungLuas.value = false;
  }
}