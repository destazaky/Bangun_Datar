import 'package:bangun_datar_app/controller/Lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lingkaran Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/lingkaran.png",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Lingkaran"),
          ),
          Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _lingkaranController.r = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari-jari",
                  hintText: "Masukkan Jari-jari",
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      _lingkaranController.hitungLuas();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: Text("Hitung Luas",
                        style: TextStyle(color: Colors.white))),
              ),
              ElevatedButton(
                  onPressed: () {
                    _lingkaranController.hitungKeliling();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      padding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  child: Text("Hitung Keliling",
                      style: TextStyle(color: Colors.deepPurple))),
            ],
          ),
          Obx(
                () => Text(
              _lingkaranController.hasil.value,
              style: TextStyle(
                color: _lingkaranController.isHitungLuas.value
                    ? Colors.green
                    : Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}