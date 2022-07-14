import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, "Öğrenci adı: ${index + 1}", "Öğrenci soyadı: ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oankiogrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade100
                : Colors.purple.shade100,
            child: ListTile(
              onTap: () {
                print("eleman tıklandı: $index");
              },
              title: Text(oankiogrenci.isim),
              subtitle: Text(oankiogrenci.soyisim),
              leading: CircleAvatar(child: Text(oankiogrenci.id.toString())),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var yeniIndex = index + 1;
          if (yeniIndex % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.teal,
            );
          }
          return SizedBox();
        },
      ),
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(child: Text(ogr.id.toString())),
            ),
          )
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
