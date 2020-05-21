import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class ContenuAccueil extends StatefulWidget {
  @override
  _ContenuAccueilState createState() => _ContenuAccueilState();
}

class Constants {
  static const String Parametres = 'Paramètres';
  static const String Quitter = 'Quitter';

  static const List<String> choices = <String>[Parametres, Quitter];
}

class _ContenuAccueilState extends State<ContenuAccueil> {
  int photoIndex = 0;

  List<String> photos = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    List<GridModel> model = [
      new GridModel(name: "Hommes", chemin: "assets/modele_homme_image1.jpg"),
      new GridModel(name: "Femmes", chemin: "assets/modele_femme_image4.jpg"),
      new GridModel(name: "Couples", chemin: "assets/modele_couple_image1.jpg"),
      new GridModel(name: "Enfants", chemin: "assets/modele_enfant_image3.jpg")
    ];

    //Appbar
    final appbarCOntAcc = AppBar(title: Text('E-Couture'));
    //Fin Appbar

    return Scaffold(
      appBar: appbarCOntAcc,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enlargeCenterPage: true,
              reverse: false,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  photoIndex = index;
                  reason = CarouselPageChangedReason.timed;
                });
              },
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: photos.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 8.0, right: 8.0, bottom: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(0.0),
                      height: MediaQuery.of(context).size.height - 550,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map(photos, (index, url) {
              return Container(
                width: photoIndex == index ? 9.0 : 7.0,
                height: photoIndex == index ? 9.0 : 7.0,
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      photoIndex == index ? Colors.black38 : Colors.grey[350],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class GridModel extends StatelessWidget {
  String name;
  String chemin;

  GridModel({this.name, this.chemin});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(7.0), boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 0,
        )
      ]),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                    image: AssetImage(chemin), fit: BoxFit.cover)),
          ),
          Positioned(
            // la bande sur les gridTiles
            bottom: 0.0,
            child: Container(
              width: 145,
              height: 30.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7.0),
                      bottomLeft: Radius.circular(7.0)),
                  color: Colors.blueAccent.withOpacity(0.60)),
              child: Text(
                name,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
