import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/purple_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /* routes: {
        '/redPage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        '/orangePage': (context) => OrangePage(),
      },
      onGenerateRoute: ,
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(
                  child: Text("404"),
                ),
              )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Islemleri'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelensayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => RedPage(), //ıos stili açılıyor
                ),
              );
              print("Ana sayfadaki sayi $_gelensayi");
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text(
              "Kırmızı Sayfaya Gir IOS",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push<int>(MaterialPageRoute(builder: (context) => RedPage()))
                  .then((int? value) {
                debugPrint('Gelen Sayı $value');
              }); //android stili açılıyor
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              "Kırmızı Sayfaya Gir ANDROID",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              "Maybe pop kullanimi",
            ),
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => GreenPage()),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              "Push Replacement kullanimi",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/orangePage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
            child: Text(
              "PushNamed kullanimi",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/yellowPage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.yellow.shade600),
            child: Text(
              "PushNamed kullanimi",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/ogrenciListesi', arguments: 60);
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
            child: Text(
              "Liste Olustur",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/purplePage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
            child: Text(
              'Mor Sayfaya Git',
            ),
          ),
        ],
      )),
    );
  }
}
