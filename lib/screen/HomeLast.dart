import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hohaya/screen/Loginform.dart';
import 'package:hohaya/screen/MenuFile.dart';
import 'package:hohaya/screen/Profile.dart';
import 'package:hohaya/screen/PublicationCategorie.dart';
import 'package:hohaya/screen/QuickSearchPage.dart';

class LastHomePage extends StatefulWidget {
  LastHomePage({Key key, this.title, this.numero}) : super(key: key);
  final String title;
  int numero;
  static String tag = "/";
  static String tag0 = "LastHomePage0";
  static String tag01 = "LastHomePage1";
  static String tag2 = "LastHomePage2";

  @override
  _LastHomePageState createState() => _LastHomePageState();
}

class Categorie {
  int num;
  String nom;

  Categorie(this.num, this.nom);

  static List<Categorie> getCategorie() {
    return <Categorie>[
      Categorie(-1, "Toutes"),
      Categorie(0, "Chambres"),
      Categorie(1, "Appartements"),
      Categorie(2, "Résidences")
    ];
  }
}

class _LastHomePageState extends State<LastHomePage> {
  //contenu publication
  Widget contenu;

  int _currentIndex = 0;
  Widget homeContainer;

  //DropDown Manager
  List<Categorie> _categorieList = Categorie.getCategorie();
  List<DropdownMenuItem<Categorie>> _dropDownCategorieItems;
  Categorie _selectedCategorie;

  List<DropdownMenuItem<Categorie>> buildDropDownItems(
      List<Categorie> categorieList) {
    List<DropdownMenuItem<Categorie>> items = List();
    for (Categorie cat in categorieList) {
      items.add(DropdownMenuItem(
        value: cat,
        child: Text(cat.nom),
      ));
    }
    return items;
  }

  @override
  void initState() {
    _dropDownCategorieItems = buildDropDownItems(_categorieList);
    print("numero ${widget.numero}");
    _selectedCategorie = _dropDownCategorieItems[widget.numero + 1].value;
    // TODO: implement initState
    print("init ${_selectedCategorie.num}");
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      //
    });
  }

  @override
  Widget build(BuildContext context) {
    //print("Widget ${_selectedCategorie.num}");
    contenu = new PublicationCategorie(type: _selectedCategorie.num);
    homeContainer = Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Type Location ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  DropdownButton(
                    items: _dropDownCategorieItems,
                    value: _selectedCategorie,
                    onChanged: onCategorieChanged,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: RaisedButton(
                    onPressed: null,
                    //color: Colors.blue,
                    //splashColor: Colors.blue,
                    disabledColor: Colors.blue,
                    child: Text("Recherche Avancée",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ))),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        contenu,
      ],
    );
    List<DropdownMenuItem<Text>> _items = [
      new DropdownMenuItem(value: Text("Tous"), child: Text("Tous")),
      new DropdownMenuItem(value: Text("Chambres"), child: Text("Chambres")),
      new DropdownMenuItem(
          value: Text("Appartements"), child: Text("Appartements")),
      new DropdownMenuItem(value: Text("Résidences"), child: Text("Résidences"))
    ];
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      drawer: Drawer(child: MenuFile()),
      appBar: AppBar(
        title: Text(
          "Hôhaya",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 36.0,
            ),
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
          )
        ],
      ),
      body: pageCentrale(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        elevation: 5,
        //iconSize: 30,
        //currentIndex: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              title: Text("Accueil")),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.search),
              //activeIcon: Icon(Icons.search, color: Colors.white, size:  20,),
              title: Text("Recherche")),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.account_circle),
              title: Text("Mon Compte"))
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void onCategorieChanged(Categorie value) {
    setState(() {
      _selectedCategorie = value;
      widget.numero = _selectedCategorie.num + 1;
      print(widget.numero);
      //contenu = PublicationCategorie(type: _selectedCategorie.num,);
      // widget.numero =
    });
  }

  Widget pageCentrale() {
    switch (_currentIndex) {
      case 0:
        return homeContainer;
      case 1:
        return QuickSearchPage();
      case 2:
        return Profile();
      default:
        return homeContainer;
    }
  }
}
