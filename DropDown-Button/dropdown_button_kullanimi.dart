import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilensehir = null;
  List<String> _tumSehirler = ["Bursa", "Burdur", "Antalya"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"),
        icon: Icon(Icons.arrow_downward),
        style: TextStyle(color: Colors.red.shade300),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        /*items: [
          DropdownMenuItem(
            child: Text("Ankara Şehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("İzmir Şehri"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("İstanbul Şehri"),
            value: "İstanbul",
          ),
        ],*/
        items: _tumSehirler
            .map(
              (String oankisehir) => DropdownMenuItem(
                child: Text(oankisehir),
                value: oankisehir,
              ),
            )
            .toList(),
        value: _secilensehir,
        onChanged: (String? yeni) {
          setState(() {
            print("Çalıştı $yeni");
            _secilensehir = yeni;
          });
        },
      ),
    );
  }
}
