import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hohaya/screen/BottonNavigation.dart';
import 'package:hohaya/screen/MenuFile.dart';
import 'package:hohaya/screen/ModelCategorie.dart';
import 'package:hohaya/screen/PublicationCategorie.dart';
import 'package:hohaya/screen/QuickSearchPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = "MyHomePage";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Categorie {
  int num;
  String nom;

  Categorie(this.num, this.nom);

  static List<Categorie> getCategorie() {
    return <Categorie>[
      Categorie(0, "Toutes"),
      Categorie(1, "Chambres"),
      Categorie(2, "Appartements"),
      Categorie(3, "Résidences")
    ];
  }
}

class _MyHomePageState extends State<MyHomePage> {
  static Column bodyColumn = new Column(
    children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
            TextField(
                decoration:
                    InputDecoration(hintText: "Tapez ici pour rechercher..."),
                onTap: seachDemande),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        width: 400,
      ),
      PublicationCategorie(type: 0)
    ],
  );

  Widget contenuCentral = new PublicationCategorie(type: 0);
  int _counter = 0;
  List<Categorie> _categorieList = Categorie.getCategorie();
  List<DropdownMenuItem<Categorie>> _dropDownCategorieItems;
  Categorie _selectedCategorie;

//on cree la liste des categories disponibles
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
    _selectedCategorie = _dropDownCategorieItems[0].value;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Widget contenu =  PublicationCategorie(type: 0);
    Widget contenu = new PublicationCategorie(type: 0);
    double _screenWidth = MediaQuery.of(context).size.width;
    List<ModelCategorie> categorieModel = [
      new ModelCategorie(titre: "Toutes Categories"),
      new ModelCategorie(titre: "Chambres"),
      new ModelCategorie(titre: "Appartements"),
      new ModelCategorie(titre: "Résidences")
    ];

    List<DropdownMenuItem<Text>> _items = [
      new DropdownMenuItem(value: Text("Tous"), child: Text("Tous")),
      new DropdownMenuItem(value: Text("Chambres"), child: Text("Chambres")),
      new DropdownMenuItem(
          value: Text("Appartements"), child: Text("Appartements")),
      new DropdownMenuItem(value: Text("Résidences"), child: Text("Résidences"))
    ];

    // return PublicationCategorie(type: 0);
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
        // backgroundColor: ,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 36.0,
            ),
            onPressed: () {
              seachDemande();
            },
          )
        ],
      ),
      body: Column(children: <Widget>[
        Container(
          width: (_screenWidth - (_screenWidth / 4)),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Tapez ici pour rechercher...",
                fillColor: Colors.grey),
            maxLines: 1,
          ),
        ),
        contenu,
      ])
      /* Column(
          children: <Widget>[
         Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Type Location ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
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
          */ /*  Row(
              children: <Widget>[
                TextField(decoration: InputDecoration(hintText: "Tapez ici pour rechercher..." ),),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),*/ /*
            PublicationCategorie(type: 0),
        */ /*Container(
                padding: EdgeInsets.fromLTRB(3, 5, 3, 0),
                // padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                height: MediaQuery.of(context).size.height - 160,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: categorieModel.length,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: MediaQuery.of(context).size.height * 0.4,
                        child: Container(child: categorieModel[index]),
                      );
                    })),*/ /*
          ],
        ),*/
      /* bodyColumn,*/
      // bottomNavigationBar:BottonNavigation()
      // This trailing comma makes auto-formatting nicer for build methods.
      ,
      bottomNavigationBar: BottonNavigation(),
    );
  }

  void onCategorieChanged(Categorie value) {
    setState(() {
      _selectedCategorie = value;
    });
  }

  static void seachDemande() {
    setState() {
      bodyColumn = new QuickSearchPage() as Column;
    }
  }
}
