import 'package:flutter/material.dart';
import 'package:hohaya/screen/Home.dart';

import 'screen/PublicationCategorie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    PublicationCategorie.tag0: (context) => PublicationCategorie(type: 0,),
    PublicationCategorie.tag1: (context) => PublicationCategorie(type: 1,),
    PublicationCategorie.tag2: (context) => PublicationCategorie(type: 2,),
    PublicationCategorie.tagNull: (context) => PublicationCategorie(type: -1,),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hôhaya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: //PublicationCategorie(),
      MyHomePage(title: "Hôhaya"),
    );
  }
}

