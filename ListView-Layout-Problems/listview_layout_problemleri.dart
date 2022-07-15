import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Layout Problems"),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }

  Column columnIcindeListe() {
    return Column(
      children: [
        Text("Başladı"),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
            ],
          ),
        ),
        Text("Bitti"),
      ],
    );
  }
}
