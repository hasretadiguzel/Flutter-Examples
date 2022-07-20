import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Page"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Purple Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
              child: Text(
                'Turuncu Sayfaya Git',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
