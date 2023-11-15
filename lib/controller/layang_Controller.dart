

import 'package:get/get.dart';

class LayangController extends GetxController{



  int Diagonal1 = 0;
  int Diagonal2 = 0;
  final hasil = "".obs;


  void hitungluas(){
    double hitung = Diagonal1*Diagonal2/2;
    hasil.value = "hasil perhitungan dari 1/2 x$Diagonal1 x $Diagonal2 = $hitung";
  }
  void hitungkeliling(){
    int hitung2 = (2+Diagonal1)+(2+Diagonal2);
    hasil.value = "hasil perhitungan dari (2+$Diagonal1 )+ (2+$Diagonal2) = $hitung2";

  }
}
