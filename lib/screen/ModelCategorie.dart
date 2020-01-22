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
    return Container(
      child: Card(

        child:Column(
          children: <Widget>[
            Row(

              children: <Widget>[
                Text(widget.titre,
                    textAlign:TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25.0,)
                ),
                new Spacer(),
                Container(
                  child:
                    IconButton(
                      icon:  Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 36.0,

                      ),
                    )
                      ,
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorie.length,
                  itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.6,
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