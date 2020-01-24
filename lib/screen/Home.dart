import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hohaya/screen/ModelCategorie.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
    final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    List<ModelCategorie> categorieModel = [
      new ModelCategorie(titre:"Toutes Categories"),
      new ModelCategorie(titre:"Chambres"),
      new ModelCategorie(titre:"Appartements"),
      new ModelCategorie(titre:"Résidences")
    ];
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          leading:  IconButton(
            icon:  Icon(
              Icons.menu,
              color: Colors.white,
              size: 36.0,
            ),
          ),
          title: Center(
            child: Text(widget.title),
          ),
          actions: <Widget>[
            IconButton(
              icon:  Icon(
                Icons.search,
                color: Colors.white,
                size: 36.0,
              ),
            )
          ],
        ),
        body:
        Column(

          children: <Widget>[
            Center(
                child :RaisedButton(
                    onPressed: null,
                    //color: Colors.blue,
                    //splashColor: Colors.blue,
                    disabledColor: Colors.blue,
                    child: Text("Recherche Avancée",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        )
                    )
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(3, 5, 3, 0),
                // padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 138,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: categorieModel.length,
                    itemBuilder: (context, index){
                      return Container(

                        // height: MediaQuery.of(context).size.height * 0.4,
                        child: Container(
                            child:  categorieModel[index]),
                      );
                    }
                )
            ),
          ],
        )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}