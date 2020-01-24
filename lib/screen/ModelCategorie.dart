import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hohaya/screen/ModelPublication.dart';

class ModelCategorie extends StatefulWidget {
  ModelCategorie({Key key, this.titre}) : super(key: key);
  final String titre;
  @override
  _ModelCategorieState createState() => _ModelCategorieState();
}

class _ModelCategorieState extends State<ModelCategorie> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final categorie = ["Toutes Categories", "Chambres", "Appartements", "Résidences"];
    List<ModelPublication> publicationModel = [
    new ModelPublication(idPub: 5,imageChemin: "assets/images/2.jpg",note: 2, titre: "Chambre Salon",villeQuartier: "Cotonou-Cadjehoun"),
    new ModelPublication(idPub: 2,imageChemin: "assets/images/3.jpg",note: 2, titre: "Entrée Couché",villeQuartier: "Calavi-Tokan"),
      new ModelPublication(idPub: 3,imageChemin: "assets/images/4.jpg",note: 2, titre: "Appartement",villeQuartier: "Cotonou-Gbégamin"),
      new ModelPublication(idPub: 4,imageChemin: "assets/images/5.jpg",note: 2, titre: "Résidence",villeQuartier: "Cotonou-Apkapka")
    ];
    double _iconSize, _fontSize1, _fontSize2, _fontSize3, _itemWidth,
        _itemHeight;
    double deviceSize = MediaQuery
        .of(context)
        .size
        .shortestSide,
        deviceHeight = MediaQuery
            .of(context)
            .size
            .height,
        deviceWidth = MediaQuery
            .of(context)
            .size
            .width;
    bool portrait = (MediaQuery
        .of(context)
        .orientation == Orientation.portrait);

    if (deviceSize < 600) {
      if (portrait) {
        print("portrait 1");
        _itemHeight = deviceHeight * 0.30;
        _itemWidth = deviceWidth * 0.6;
      } else {
        print("paysage 1");
        _itemHeight = deviceHeight * 0.5;
        _itemWidth = deviceWidth * 0.3;
      }
    } else {
      if (portrait) {
        print("portrait 2");
        _itemHeight = deviceHeight * 0.2;
        _itemWidth = deviceWidth * 0.4;

        _fontSize1 = 22.0;
        _iconSize = 28.0;
      } else {
        print("paysage 2");
        _itemHeight = deviceHeight * 0.45;
        _itemWidth = deviceWidth * 0.4;

        _fontSize1 = 25.0;
        _iconSize = 36.0;
      }
    }

    return Container(
      child: Card(
          elevation: 5,
        child:Column(
          children: <Widget>[
            Row(

              children: <Widget>[
                Text(widget.titre,
                    textAlign:TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: _fontSize1,)
                ),
                new Spacer(),

                Container(
                  child:
                    IconButton(
                      icon:  Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: _iconSize,

                      ),
                    )
                      ,
                )
              ],
            ),
            Container(
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),

                height: _itemHeight /*MediaQuery.of(context).size.height * 0.35 MediaQuery.of(context).orientation == DeviceOrientation.portraitUp ? (MediaQuery.of(context).size.height * 0.35) : (MediaQuery.of(context).size.height * 0.2)*/,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorie.length,
                  itemBuilder: (context, index) {
                return Container(
                  width: /*MediaQuery.of(context).size.width * 0.6*/ _itemWidth,
                  child: Card(
                    color: Colors.blue,
                    child: Container(
                      child: Center(
                         child: publicationModel[index]
                      ),
                    ),
                  ),
                );
              }
              )
        )
          ],
        )
      )
    );
  }
}