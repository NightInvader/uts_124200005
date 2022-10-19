import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({Key? key}) : super(key: key);

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  int r = 0;
  String Temp = "";
  String luas = "";
  String Kel = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran"),
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
                          labelText: 'Masukkan Jari Jari',
                        ),
                        onChanged: (value) {
                          r = int.parse(value);
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
                              luas = (3.14 * r * r).toString();
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
                              Kel = ( 2 * 3.14 * r ).toString();
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
