import 'package:flutter/material.dart';
import 'package:hohaya/screen/ModelPublication.dart';
import 'package:hohaya/screen/PresentSelectedGite.dart';

class PublicationCategorie extends StatefulWidget {
  PublicationCategorie({Key key, this.type}) : super(key: key);
  static String tag0 = "PublicationCategorie Chambres";
  static String tag1 = "PublicationCategorie Appartements";
  static String tag2 = "PublicationCategorie Résidences";
  static String tagNull = "PublicationCategorie Toutes";
  String categorieName = "Locations Publiées", libellePub = "Location";
  final int type;

  @override
  _PublicationCategorieState createState() => _PublicationCategorieState();
}

class _PublicationCategorieState extends State<PublicationCategorie> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case -1:
        widget.categorieName = "Locations Disponibles";
        widget.libellePub = "Location";
        break;
      case 0:
        widget.categorieName = "Chambres Disponibles";
        widget.libellePub = "Chambres - Salon";
        break;
      case 1:

        widget.categorieName = "Appartements Disponibles";
        widget.libellePub = "Appartements";
        break;
      case 2:
        widget.categorieName = "Résidences Disponibles";
        widget.libellePub = "Résidences";
        break;
      default:
        widget.categorieName = "Locations Disponibles";
        widget.libellePub = "Location";
        break;
    }
    List<ModelPublication> publicationModel = [
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre:widget.libellePub,
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 5,
          imageChemin: "assets/images/2.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Cadjehoun"),
      new ModelPublication(
          idPub: 2,
          imageChemin: "assets/images/3.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Calavi-Tokan"),
      new ModelPublication(
          idPub: 3,
          imageChemin: "assets/images/4.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Gbégamin"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka"),
      new ModelPublication(
          idPub: 4,
          imageChemin: "assets/images/5.jpg",
          note: 2,
          titre: widget.libellePub,
          villeQuartier: "Cotonou-Apkapka")
    ];
    //Declaration Variables
    double _TitleSize;
    int _countItem;
    double deviceSize = MediaQuery.of(context).size.shortestSide, _screenH = MediaQuery.of(context).size.height;
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

    return  Column(
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
          height: _screenH-255,
            child: OrientationBuilder(builder: (context, orientation) {
              return GridView.count(
                  crossAxisCount: _countItem,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.vertical,
                  children:
                  List.generate(publicationModel.length, (index) {
                    return GestureDetector(
                      child: Card(
                          color: Colors.blue,
                          child:publicationModel[index]),
                      onTap: (){Navigator.of(context).pushNamed("/PresentSelectedGite", arguments: 1);} ,
                    );
                  }
                  )
              );
            }),
          ),
          /*GestureDetector(
            child: Card(
                color: Colors.blue,
                child:publicationModel[index]),
            onTap: ,
          )*/
        ],
      );
  //  );
  }
}
