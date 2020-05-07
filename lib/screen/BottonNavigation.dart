import 'package:flutter/material.dart';
import 'package:hohaya/screen/Home.dart';
import 'package:hohaya/screen/HomeLast.dart';
import 'package:hohaya/screen/QuickSearchPage.dart';
class BottonNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

      BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.blue,
      elevation: 5,
      //iconSize: 30,
      //currentIndex: 0,
      onTap: (int index){
        switch(index)
        {
          case 1:
            Navigator.of(context).pushNamed(LastHomePage.tag);
            break;
          case 2:
            Navigator.of(context).pushNamed(LastHomePage.tag);
            break;
          default :
            Navigator.of(context).pushNamed(LastHomePage.tag);
            break;
        }
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
         backgroundColor: Colors.blue,
          icon: Icon(Icons.home),
            title: Text("Accueil")
        ),

        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.search),
            //activeIcon: Icon(Icons.search, color: Colors.white, size:  20,),
            title: Text("Recherche")
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.account_circle),
            title: Text("Mon Compte")
        )

      ],
    );
  }
}
