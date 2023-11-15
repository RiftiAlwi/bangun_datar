

import 'package:get/get.dart';

class SegitigaController extends GetxController{



  int sisi = 0;
  final hasil = "".obs;
  final hasil2 = "".obs;


  void hitungkeliling(){
    int hitung2 = sisi*3;
    hasil.value = "hasil perhitungan dari $sisi x 3 = $hitung2";

  }
}
