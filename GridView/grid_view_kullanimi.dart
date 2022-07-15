import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Container(
            alignment: Alignment.center,
            color: Colors.pink[100 * (index+1 % 8)],
            child: Text(
              "Merhaba Flutter $index",
              textAlign: TextAlign.center,
            ),
          );
        });

  }
}
/*
GridView.count(
      crossAxisCount: 2,
      primary: true,
      reverse: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade400,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade500,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade600,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade700,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade800,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
      ],
    );
 */



/*
GridView.extent(
      maxCrossAxisExtent: 100,
      primary: true,
      //reverse: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade400,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade500,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade600,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade700,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade800,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
      ],
    );
 */
