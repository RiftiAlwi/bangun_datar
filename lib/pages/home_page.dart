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
      body: Column(
        children: [
          custommenu(imageAssets: "assets/Untitled.png",title: "Persegi"),
          custommenu(imageAssets: "assets/segitiga.png",title: "segitiga"),
        ],
      ),
    );
  }
}

class custommenu extends StatelessWidget {
  const custommenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;sS
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.deepOrange[400]),
      child: Column(
        children: [
          Image.asset(imageAssets,height: 100,),
          Text(title),
        ],
      ),
    );
  }
}
