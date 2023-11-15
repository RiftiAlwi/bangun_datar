import 'package:bangun_datar_app/controller/persegipanjang_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class PersegiPanjang extends StatelessWidget {
  const PersegiPanjang({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Persegi Panjang"),
      ),
      body: Column(
    children: [
    custommenu(imageAssets: "assets/download.png", title: "Persegi panjang"),
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
  final PersegiPanjangController _controller = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Image.asset(
            "assets/download.png",
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Persegi panjang",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
              "Rumus dari keliling persegi panjang yaitu 2P + 2L atau 2 (p + l). Dengan P merupakan panjang Persegi panjang dan L merupakan lebar dari persegi panjang. "),
          Text(
              "\nRumus dari keliling persegi panjang yaitu 2P + 2L atau 2 (p + l). Dengan P merupakan panjang Persegi panjang dan L merupakan lebar dari persegi panjang"),



              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) {
                    _controller.panjang = int.parse(value);
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Panjang",
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) {
                    _controller.lebar = int.parse(value);
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Lebar",
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
                    _controller.hitungluas();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  ),
                  child: Text("Hitung Luas")),
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
