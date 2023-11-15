import 'package:bangun_datar_app/controller/segitiga_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitigapage extends StatelessWidget {
  Segitigapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Segitiga"),
      ),
      body: Column(
        children: [
          custommenu(imageAssets: "assets/segitiga.png", title: "segitiga"),
        ],
      ),
    );
  }
}

class custommenu extends StatelessWidget {
  custommenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;
  final SegitigaController _controller = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Image.asset(
            "assets/segitiga.png",
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "segitiga",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
              "Rumus luas persegi ini dikerjakan dengan cara mengalikan kedua sisi atau lebih tepatnya bagian panjang dan lebarnya. Jadi, rumusnya adalah luas = panjang x lebar atau luas = sisi x sisi."),
          Text(
              "\nUntuk mengukur keliling bidang persegi, kamu harus melakukan perjalanan ke setiap sisi persegi. Mengetahui keliling tersebut bisa menggunakan rumus keliling persegi, sebagai berikut: K = s + s + s + s atau 4×s."),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onChanged: (value) {
                _controller.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            children: [

              ElevatedButton(
                  onPressed: () {
                    _controller.hitungkeliling();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  ),
                  child: Text("Hitung keliling")),
              Obx(() => Text(_controller.hasil.value)),
            ],
          ),
        ],
      ),
    );
  }
}
