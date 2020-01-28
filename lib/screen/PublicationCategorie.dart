import 'package:flutter/material.dart';
import 'package:hohaya/screen/ModelPublication.dart';

class PublicationCategorie extends StatefulWidget {
  PublicationCategorie({Key key, this.type}) : super(key: key);
  static String tag0 = "PublicationCategorie Chambres";
  static String tag1 = "PublicationCategorie Appartements";
  static String tag2 = "PublicationCategorie Résidences";
  static String tagNull = "PublicationCategorie Toutes";
  String categorieName = "Locations Publiées";
  final int type;

  @override
  _PublicationCategorieState createState() => _PublicationCategorieState();
}

class _PublicationCategorieState extends State<PublicationCategorie> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 0:
        widget.categorieName = "Chambres Disponibles";
        break;
      case 1:
        widget.categorieName = "Appartements Disponibles";
        break;
      case 2:
        widget.categorieName = "Résidences Disponibles";
        break;
      default:
        widget.categorieName = "Locations Disponibles";
        break;
    }
    List<ModelPublication> publicationModel = [
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: "Chambre Salon",
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: "Chambre Salon",
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: "Chambre Salon",
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: "Chambre Salon",
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 2,
          imageChemin: "assets/images/3.jpg",
          note: 2,
          titre: "Entrée Couché",
          villeQuartier: "Calavi-Tokan"),
      new ModelPublication(
          idPub: 3,
          imageChemin: "assets/images/4.jpg",
          note: 2,
          titre: "Appartement",
          villeQuartier: "Cotonou-Gbégamin"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: "Résidence",
          villeQuartier: "Cotonou-Apkapka")
    ];
    //Declaration Variables
    double _TitleSize;
    int _countItem;
    double deviceSize = MediaQuery.of(context).size.shortestSide;
    bool portrait =
        (MediaQuery.of(context).orientation == Orientation.portrait);

    if (deviceSize < 600) {
      if (portrait) {
        _countItem = 1;
        _TitleSize = 18;
      } else {
        _countItem = 2;
        _TitleSize = 20;
      }
    } else {
      if (portrait) {
        _countItem = 2;
        _TitleSize = 22;
      } else {
        _countItem = 4;
        _TitleSize = 25;
      }
    }
    //fIN DECLARATON

    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Colors.white,size: 20,),
          onPressed: null,
        ),*/
        title: Text(
          "Hôhaya",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        // backgroundColor: ,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              widget.categorieName,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: _TitleSize,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 115 - 3,
            child: OrientationBuilder(builder: (context, orientation) {
              return GridView.count(
                  crossAxisCount: _countItem,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.vertical,
                  children: List.generate(publicationModel.length, (index) {
                    return publicationModel[index];
                  }));
            }),
          )
        ],
      ),
    );
  }
}
