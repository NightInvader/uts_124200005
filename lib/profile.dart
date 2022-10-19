import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 400,
              child: Image.network('https://i.postimg.cc/9Q5fmw1y/IMG-4584-1.jpg')
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("Nama  : Mu'ammar Sadam Sirojuddin Al-Arief"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("NIM   : 124200005"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("TTL   : Batang,13 September 2002"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("Hobi  : Membaca, Nonton, Main Game"),
            )
          ],
        ),
      ),
    );
  }
}
