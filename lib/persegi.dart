
import 'package:flutter/material.dart';


class Persegi extends StatefulWidget {
  const Persegi({Key? key}) : super(key: key);

  @override
  State<Persegi> createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  int sisi = 0;
  String Temp = "";
  String luas = "";
  String Kel = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi"),
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
                          sisi = int.parse(value);
                          Temp = (sisi).toString();
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
                              luas = (sisi * sisi).toString();
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
                              Kel = (sisi * 4).toString();
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
