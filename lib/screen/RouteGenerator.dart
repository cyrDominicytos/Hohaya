import 'package:flutter/material.dart';
import 'package:hohaya/screen/HomeLast.dart';
import 'package:hohaya/screen/PresentSelectedGite.dart';
import 'package:hohaya/main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case "/":
        if(args is int)
        return MaterialPageRoute(builder: (_) =>  LastHomePage(title: "Hôhaya", numero: args,));
        return _errorRoute();
      case "/PresentSelectedGite" :
          if(args is int)
            return MaterialPageRoute(
              builder: (_) => PresentSelectedGite(mode:args)
            );
          return _errorRoute();
      default :
        return MaterialPageRoute(builder: (_) =>  LastHomePage(numero: 0,));
    }
  }
  static Route _errorRoute() {
return MaterialPageRoute(
  builder: (_){
    return Scaffold(
      appBar: AppBar(title:Text("Error")),
      body: Center(
        child: Text("Error Page not found"),
      ),
    );
  }
);
  }
}

