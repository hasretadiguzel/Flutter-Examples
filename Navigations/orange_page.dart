import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orange Page"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Orange Page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
              child: Text("En Başa Geri Dön"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil(
                      (route) => route.settings.name == '/purplePage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade600),
                child: Text("Mora Geri Dön")),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == '/');
              },
              style: ElevatedButton.styleFrom(primary: Colors.green.shade600),
              child: Text("En Başa Dön"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/yellowPage', (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text("Sarıyı Ana Sayfadan Sonra Yükle"),
            ),
          ],
        ),
      ),
    );
  }
}
