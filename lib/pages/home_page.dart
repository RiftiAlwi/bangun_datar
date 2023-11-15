import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:bangun_datar_app/pages/PersegiPanjangPage.dart';
import 'package:bangun_datar_app/pages/LayangPage.dart';
import 'package:bangun_datar_app/pages/SegitigaPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Persegipage()));
              },
              child: custommenu(
                  imageAssets: "assets/Untitled.png", title: "Persegi")),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Persegipage()));
                      },
                      child: custommenu(
                          imageAssets: "assets/Untitled.png", title: "Persegi")),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjang()));
                    },
                    child: custommenu(
                      imageAssets: "assets/download.png", title: "Persegi Panjang")),

                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LayangPage()));
                      },
                      child: custommenu(
                          imageAssets: "assets/layang.png", title: "Layang layang")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Segitigapage()));
                      },
                      child: custommenu(
                          imageAssets: "assets/segitiga.png", title: "segitiga")),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class custommenu extends StatelessWidget {
  const custommenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.deepOrange[400]),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
