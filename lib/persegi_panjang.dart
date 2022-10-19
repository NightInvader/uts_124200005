import 'package:flutter/material.dart';

class PersegiPanjang extends StatefulWidget {
  const PersegiPanjang({Key? key}) : super(key: key);

  @override
  State<PersegiPanjang> createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  int panjang = 0;
  int lebar = 0;
  String Temp = "";
  String luas = "";
  String Kel = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
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
                          labelText: 'Masukkan Panjang Sisi',
                        ),
                        onChanged: (value) {
                          panjang = int.parse(value);
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
                          labelText: 'Masukkan Lebar Sisi',
                        ),
                        onChanged: (value) {
                          lebar = int.parse(value);
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
                              luas = (panjang * lebar).toString();
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
                              Kel = ( (panjang+lebar)*2 ).toString();
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
