import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  int alas = 0;
  int sisiB = 0;
  int sisiC = 0;
  int tinggi = 0;
  String Temp = "";
  String luas = "";
  String Kel = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga"),
      ),
      body: Column(
        children: [
          Container(
            child: Form(
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Alas Segitiga',
                        ),
                        onChanged: (value) {
                          alas = int.parse(value);
                          // Temp = (panjang).toString();
                        },
                        validator: (value){
                          return value!.isEmpty
                              ? 'Masukkan Panjang Sisi Persegi'
                              : null;
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Sisi B Segitiga',
                        ),
                        onChanged: (value) {
                          sisiB = int.parse(value);
                          // Temp = (sisi).toString();
                        },
                        validator: (value){
                          return value!.isEmpty
                              ? 'Masukkan Panjang Sisi Persegi'
                              : null;
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Sisi C Segitiga',
                        ),
                        onChanged: (value) {
                          sisiC = int.parse(value);
                          // Temp = (sisi).toString();
                        },
                        validator: (value){
                          return value!.isEmpty
                              ? 'Masukkan Panjang Sisi Persegi'
                              : null;
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Tinggi Segitiga',
                        ),
                        onChanged: (value) {
                          tinggi = int.parse(value);
                          // Temp = (sisi).toString();
                        },
                        validator: (value){
                          return value!.isEmpty
                              ? 'Masukkan Panjang Sisi Persegi'
                              : null;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            child: Text("Luas"),
                            onPressed: (){
                              luas = ((alas * tinggi)/2).toString();
                              setState(() {
                                // Text("$luas");
                              });
                            }
                        ),
                        Text("  : $luas"),
                        // Text("$luas"),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            child: Text("Keliling"),
                            onPressed: (){
                              Kel = ( alas+sisiB+sisiC ).toString();
                              setState(() {

                              });
                            }
                        ),
                        Text("  :  $Kel"),
                      ],
                    ),

                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
