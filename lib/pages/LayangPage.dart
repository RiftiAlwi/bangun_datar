import 'package:bangun_datar_app/controller/layang_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LayangPage extends StatelessWidget {
  const LayangPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text("Layang-layang"),
      ),
      body: Column(
        children: [
          custommenu(imageAssets: "assets/layang.png", title: "Layang-layang"),
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
  final LayangController _controller = Get.put(LayangController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Image.asset(
            "assets/layang.png",
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Layang-layang",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
              "Luas layang-layang adalah setengah hasil kali panjang diagonal-diagonalnya. Rumus untuk menentukan luas layang-layang adalah: Luas = 1/2 × (d)1 × (d)2."),
          Text(
              "\nPenjelasannya, a dan b adalah panjang kedua pasang sisi layang-layang dengan ukuran yang sama. Atau variasi rumus keliling layang-layang lainnya adalah: Keliling Layang-Layang = (a + a) + (b + b)"),



          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onChanged: (value) {
                _controller.Diagonal1 = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Diagonal1",
                  hintText: "Masukan diagonal1",
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
                _controller.Diagonal2 = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "diagonal2",
                  hintText: "Masukan diagonal2",
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
