import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 10),
                  //borderRadius: new BorderRadius.all(new Radius.circular(5)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.red,
                      offset: new Offset(10, 5),
                      blurRadius: 20.0,
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Colors.blue[100 * ((index + 1) % 8)],
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.red],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                      image: AssetImage("assets/images/foto.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter)),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Merhaba Flutter $index",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            onTap: () => debugPrint("Merhaba Flutter $index tıklanıldı"),
            onDoubleTap: () =>
                debugPrint("Merhaba Flutter $index çift tıklanıldı"),
            onLongPress: () =>
                debugPrint("Merhaba Flutter $index uzun basıldı"),
            onHorizontalDragStart: (e) =>
                debugPrint("Merhaba Flutter $index tıklanıldı $e"),
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
