import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
  
final PersegiController persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Persegi Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/persegi.png", height: 100
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku."),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (value){
              persegiController.sisi=int.parse(value);
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi",
              hintText: "Masukan Sisi",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10)))),),
        ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                persegiController.hitungLuas();
              }, child: Text("Hitung Luas")),
            ],
          ),
          Obx(() => Text(persegiController.hasil.value)),


          Row(
            children: [
              ElevatedButton(onPressed: (){
                persegiController.hitungKeliling();
              }, child: Text("Hitung Keliling")),
            ],
          ),
          Obx(() => Text(persegiController.kel.value)),
        ],
      ),
    );

  }
}
