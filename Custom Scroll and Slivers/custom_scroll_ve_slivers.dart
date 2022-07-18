import 'dart:math' as matematik;
import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/foto.png",
              fit: BoxFit.cover,
            ),
          ),
        ),

        //Statik elemanli bir sliver list view
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
          ),
        ),

        //Elemanlari builder ile olusturulan bir list view
        SliverPadding(
            padding: EdgeInsets.all(4),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElemanUretenFonksiyon,
                  childCount: 10),
            )),

        //Elemanlara statik olusturulan ama extent mantiğiyla calisan listview
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
            itemExtent: 100),

        //Elemanlara dinamik olusturulan ama extent mantiğiyla calisan listview
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 50),
      ],
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
