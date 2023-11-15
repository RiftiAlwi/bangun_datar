

import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{



  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;


  void hitungluas(){
    int hitung = panjang*lebar;
    hasil.value = "hasil perhitungan dari $panjang x $lebar = $hitung";
  }
  void hitungkeliling(){
    int hitung2 = 2*panjang+2*lebar;
    hasil.value = "hasil perhitungan dari 2x$panjang + 2x$lebar = $hitung2";

  }
}
