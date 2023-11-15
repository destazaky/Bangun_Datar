import 'package:get/get.dart';

class PersegiController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int sisi = 0;

  final hasil = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi  ;
    hasil.value = "Hasil perhitungan luas dari $sisi x $sisi = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = sisi * 4;
    hasil.value = "Hasil perhitungan keliling dari $sisi + $sisi + $sisi + $sisi = $hitung";
    isHitungLuas.value = false;
  }
}