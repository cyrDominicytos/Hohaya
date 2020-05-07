import 'package:flutter/material.dart';
import 'package:hohaya/screen/Home.dart';
import 'package:hohaya/screen/HomeLast.dart';
import 'package:hohaya/screen/PresentSelectedGite.dart';
import 'package:hohaya/screen/QuickSearchPage.dart';
import 'package:hohaya/screen/RouteGenerator.dart';

import 'screen/PublicationCategorie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  /*final routes = <String, WidgetBuilder>{

    MyHomePage.tag: (context) => MyHomePage(),
    LastHomePage.tag: (context) => LastHomePage(),
    PresentSelectedGite.tag: (context) => PresentSelectedGite(mode: 1,),

    PublicationCategorie.tag0: (context) => PublicationCategorie(type: 0,),
    PublicationCategorie.tag1: (context) => PublicationCategorie(type: 1,),
    PublicationCategorie.tag2: (context) => PublicationCategorie(type: 2,),
    PublicationCategorie.tagNull: (context) => PublicationCategorie(type: -1,),
    QuickSearchPage.tag: (context) => QuickSearchPage(),
  };*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hôhaya',  
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // routes: routes,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      home: LastHomePage(title: "Hôhaya", numero: 1,),
    );
  }
}

