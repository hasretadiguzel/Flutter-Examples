import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rasgelesayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("on will pop çalıştı");
        if (_rasgelesayi == 0) {
          _rasgelesayi = Random().nextInt(100);
          Navigator.pop(context, _rasgelesayi);
        }
        return Future.value(false); //sol üstteki geri butonu çalışmasın demek
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Red Page"),
          backgroundColor: Colors.red,
          //automaticallyImplyLeading: false, //yukarıdaki geri butonunu kaldırmak
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              "Red Page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                _rasgelesayi = Random().nextInt(100);
                print("Üretilen sayi $_rasgelesayi");
                Navigator.of(context).pop<int>(_rasgelesayi);
              },
              child: Text("Geri Dön "),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("Evet pop olabilir");
                } else {
                  print("Hayır pop olamaz");
                }
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text(
                "Can pop kullanimi",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text(
                "Go to Orange",
              ),
            ),
          ],
        )),
      ),
    );
  }
}
