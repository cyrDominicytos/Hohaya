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
    return Container(
      child: Card(
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
                          fontSize: 18.0,
                        ),
                        // textAlign: Alignment.topCenter,
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                        ],
                        // verticalDirection: VerticalDirection.,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Spacer(),
                      Center(
                          child: RaisedButton(
                              onPressed: null,
                              //color: Colors.blue,
                              //splashColor: Colors.blue,
                              disabledColor: Colors.blue,
                              child: Text("35000 CFA",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  )))),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "5 ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15.0,
                            ),
                          ),
                          Icon(
                            Icons.airline_seat_individual_suite,
                            color: Colors.blue,
                            size: 50.0,
                          ),
                          //new Spacer(),

                          Text(
                            "Ordinaire",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        borderOnForeground: true,
      ),
    );
  }
}
