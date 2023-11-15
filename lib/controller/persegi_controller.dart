import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final kel = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
  }
  void hitungKeliling(){
    int keliling = sisi * 4;
    hasil.value = "Hasil perhitungan dari $sisi * 4 = $keliling";
  }
}
