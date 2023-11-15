import 'package:get/get.dart';

class LingkaranController extends GetxController {
  RxBool isHitungLuas = true.obs;

  int r = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung =  3.14 * r * r;
    hasil.value = "Hasil perhitungan dari 3.14 x $r x $r = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling() {
    double hitung = 2 * 3.14 * r;
    hasil.value =
    "Hasil perhitungan dari 2 x 3.14 x $r = $hitung";
    isHitungLuas.value = false;
  }
}