import 'package:get/get.dart';

class PanjangController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int panjang = 0;
  int lebar = 0;

  final hasil = "".obs;

  void hitungLuas() {
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan luas dari $panjang x $lebar = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil perhitungan keliling dari 2 x ($panjang + $lebar) = $hitung";
    isHitungLuas.value = false;
  }
}
