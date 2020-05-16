import 'package:flutter/material.dart';
import 'package:hohaya/screen/HomeLast.dart';
import 'package:hohaya/screen/Loginform.dart';
import 'package:hohaya/screen/PresentSelectedGite.dart';
import 'package:hohaya/screen/QuickSearchPage.dart';
import 'package:hohaya/screen/Sign.dart';

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
      case "/Loginform" :
        if (args is int)
          return MaterialPageRoute(
              builder: (_) => PresentSelectedGite(mode: args)
          );
        return MaterialPageRoute(
            builder: (_) => Loginform()
        );

      case "/Sign" :
        if (args is int)
          return MaterialPageRoute(
              builder: (_) => PresentSelectedGite(mode: args)
          );
        return MaterialPageRoute(
            builder: (_) => Sign()
        );

      case "/QuickSearchPage" :
        if (args is int)
          return MaterialPageRoute(
            builder: (_) => QuickSearchPage(),
          );
        return MaterialPageRoute(
            builder: (_) => QuickSearchPage()
        );
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

