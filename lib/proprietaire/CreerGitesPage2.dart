import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreerGitesPage2 extends StatefulWidget {
  @override
  _CreerGitesPage2State createState() => _CreerGitesPage2State();
}

class _CreerGitesPage2State extends State<CreerGitesPage2> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height,
        screenWidth = MediaQuery.of(context).size.width,
        imageHeight = screenHeight / 1.8,
        dotTop = screenHeight / 2,
        iconTop = screenHeight / 4;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hohaya'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  "Ajouter les images",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Images defilantes
              Padding(
                child: Stack(
                  children: <Widget>[

                    Card(
                      elevation: 2,
                      child: Container(
                        width: screenWidth,
                        height: imageHeight,
                        //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)),
                        child: _image == null
                            ? Text('Aucune image selectionné.')
                            : Image.file(_image),
                      ),
                      borderOnForeground: true,
                      color: Colors.white,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              ),
              //Precedent suivant
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Caméra"),
                    color: Colors.blueAccent,
                    onPressed: getImage,
                  ),
                  SizedBox(width: 50),
                  RaisedButton(
                    child: Text("Galerie"),
                    color: Colors.indigo,
                    onPressed: getImage,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
