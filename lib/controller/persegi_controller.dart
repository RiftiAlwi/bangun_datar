

import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final hasil2 = "".obs;

  void hitungluas(){
    int hitung = sisi*sisi;
    hasil.value = "hasil perhitungan dari $sisi x $sisi = $hitung";
  }
  void hitungkeliling(){
    int hitung2 = sisi*4;
    hasil.value = "hasil perhitungan dari $sisi x 4 = $hitung2";

  }
}
