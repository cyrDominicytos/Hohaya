import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ModelPublication extends StatefulWidget {
  ModelPublication(
      {Key key,
      this.titre,
      this.note,
      this.imageChemin,
      this.idPub,
      this.villeQuartier})
      : super(key: key);
  final String titre, imageChemin, villeQuartier;
  final int note, idPub;

  @override
  _ModelPublicationState createState() => _ModelPublicationState();
}

class _ModelPublicationState extends State<ModelPublication> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        _itemHeight = deviceHeight * 0.35;
        _itemWidth = deviceWidth * 0.6;

        _fontSize2 = 15;
        _fontSize3 = 10;
        _iconSize = 15;
      } else {
        print("paysage 1");
        _itemHeight = deviceHeight * 0.5;
        _itemWidth = deviceWidth * 0.3;

        _fontSize2 = 10;
        _fontSize3 = 10;
        _iconSize = 15;
      }
    } else {
      if (portrait) {
        print("portrait 2");
        _itemHeight = deviceHeight * 0.2;
        _itemWidth = deviceWidth * 0.4;

        _fontSize2 = 18.0;
        _fontSize3 = 12.0;
        _iconSize = 20;
      } else {
        print("paysage 2");
        _itemHeight = deviceHeight * 0.45;
        _itemWidth = deviceWidth * 0.4;

        _fontSize2 = 18.0;
        _fontSize3 = 12.0;
        _iconSize = 25;
      }
    }
    return Container(
      child: Card(
        elevation: 5,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imageChemin),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(
                        widget.villeQuartier,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize2,
                        ),
                        // textAlign: Alignment.topCenter,
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Center(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: _iconSize,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.yellow,
                                        size: _iconSize,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.yellow,
                                        size: _iconSize,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.yellow,
                                        size: _iconSize,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.yellow,
                                        size: _iconSize,
                                      ),
                                    ],
                                    // verticalDirection: VerticalDirection.,
                                  ))
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "5 ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: _fontSize3,
                                    ),
                                  ),
                                  Icon(
                                    Icons.airline_seat_individual_suite,
                                    color: Colors.blue,
                                    size: _iconSize,
                                  ),
                                  //new Spacer(),

                                  Text(
                                    "Ordinaire",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: _fontSize2,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(

                            child: Padding(

                                padding: EdgeInsets.only(top: 10),
                                child: Text("35000 CFA",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // backgroundColor:Colors.blue,
                                    )
                                )
                            )
                        )
                      ],
                    )
                  ],
                )
            ),
          ],
        ),
        borderOnForeground: true,
      ),
    );
  }
}
