
import 'package:uts_124200005/lingkaran.dart';
import 'package:uts_124200005/persegi.dart';
import 'package:flutter/material.dart';
import 'package:uts_124200005/persegi_panjang.dart';
import 'package:uts_124200005/profile.dart';
import 'package:uts_124200005/segitiga.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            _persegi(context),
            _persegi_panjang(context),
            _segitiga(context),
            _lingkaran(context),
        ]
        ),
      ),

    );
  }
  Widget _persegi(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
          child: Text("Luas Persegi"),
          onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Persegi()
            ));
            },
          ),
    );
  }
  Widget _persegi_panjang(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Luas Persegi Panjang"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PersegiPanjang()
            ));
        },
      ),
    );
  }
  Widget _segitiga(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Luas Segitiga"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Segitiga()
            ));
        },
      ),
    );
  }
  Widget _lingkaran(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Luas Lingkaran"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Lingkaran()
            ));
        },
      ),
    );
  }

}
