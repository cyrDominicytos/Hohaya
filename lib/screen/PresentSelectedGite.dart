import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hohaya/screen/MenuFile.dart';
import 'package:hohaya/screen/BottonNavigation.dart';

class PresentSelectedGite extends StatefulWidget {
  PresentSelectedGite({Key key, this.mode}) : super(key: key);
  final int mode;
  static String tag = "/PresentSelectedGite";

  @override
  _PresentSelectedGiteState createState() => _PresentSelectedGiteState();
}

class _PresentSelectedGiteState extends State<PresentSelectedGite> {
  int _locationIndex = 0;
  int note = 0;
  List<Icon> iconList = [ Icon(Icons.star_border,), Icon(Icons.star_border,), Icon(Icons.star_border,), Icon(Icons.star_border,), Icon(Icons.star_border,)];
  List<String> _locationImages = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
  ];

  void _previousImage()
  {
    setState(() {
      _locationIndex = _locationIndex > 0 ? _locationIndex - 1 : 0;

    });
  }

  void _nextImage()
  {
    setState(() {
      _locationIndex = _locationIndex < _locationImages.length - 1  ? _locationIndex + 1  :_locationIndex;

    });
  }


  void _noter(int note) async
  {
    setState(() {
      iconList = new List();
      while(note > 0)
        iconList.add( Icon(Icons.star, color: Colors.yellow,));
      for(int i = note; i < 5 ; i++)
        iconList.add( Icon(Icons.star_border,));

    });
  }
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height, screenWidth=MediaQuery.of(context).size.width, imageHeight =screenHeight/1.8,  dotTop = screenHeight/2, iconTop = screenHeight/4;
    return
      (widget.mode < 0) ?
      (Scaffold(
        //When without appBar
        body:ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    //Images defilantes
                    Padding(

                      child: Stack(
                        children: <Widget>[

                          Card(
                            elevation: 2,
                            child:   Container(
                              width:screenWidth,
                              height: imageHeight,
                              //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(_locationImages[_locationIndex]),
                                    fit: BoxFit.cover,

                                  ),
                                  borderRadius: BorderRadius.circular(15)
                              )
                              ,
                            ),
                            borderOnForeground: true,
                            color: Colors.white,
                          ) ,

                          Positioned(

                            child: SelectedPhoto(index: _locationIndex,numberOfDots: _locationImages.length,),
                            top: dotTop,
                            left: 25.0,
                            right: 25.0,
                          )
                          ,
                          Positioned(
                            child: IconButton(
                              //disabledColor: Colors.grey.withOpacity(3.0),
                              icon: Icon(Icons.arrow_back_ios, size: 40,color: Colors.blueAccent,),
                              onPressed: _previousImage,
                            ),
                            top: iconTop,
                            left: 0.0,
                          ),
                          Positioned(
                            child: IconButton(
                              //disabledColor: Colors.grey.withOpacity(3.0),
                              icon: Icon(Icons.arrow_forward_ios, size: 40,color: Colors.blueAccent,),
                              onPressed: _nextImage,
                            ),
                            top: iconTop,
                            right: 0.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    )
                    ,
                    //Precedent suivant
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Précédent"),
                          color: Colors.blueAccent,
                          onPressed: _previousImage,
                        ),
                        SizedBox(width: 50),
                        RaisedButton(
                          child: Text("Suivant"),
                          color: Colors.indigo,
                          onPressed: _nextImage,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  //margin: EdgeInsets.only(top: 10, left:30),

                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Chambre Salon Sanitaire",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text("35000 CFA",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,  fontWeight: FontWeight.bold),
                          )
                        /*Padding(
                   child:  Text("35000 CFA",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),

                   ),*/
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Notez : ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              IconButton(
                                icon: iconList[0],
                                iconSize: 30,
                                onPressed:(){_noter(1);print(iconList);},
                              ),IconButton(
                                icon: iconList[1],
                                iconSize: 30,
                                onPressed: (){_noter(2);},
                              ),IconButton(
                                icon: iconList[2],
                                iconSize: 30,
                                onPressed: (){_noter(3);},
                              ),IconButton(
                                icon: iconList[3],
                                iconSize: 30,
                                onPressed: (){_noter(4);},
                              ),IconButton(

                                icon:iconList[4],
                                iconSize:30,
                                onPressed: (){_noter(5);},
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text("Louer", style: TextStyle( fontSize: 20, color: Colors.white),),
                                disabledColor: Colors.green,
                                textColor: Colors.white,
                              ),
                              SizedBox(width:20,height: 10,),
                              FlatButton(
                                child: Text("Reserver", style: TextStyle( fontSize: 20, color: Colors.white),),
                                disabledColor: Colors.indigo,
                                textColor: Colors.white,
                              ),
                              SizedBox(width: 20,)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  color: Colors.white,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child:   Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[


                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:Text(
                          "Description", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Chambre salon ordinaire avec compteur personnel. Accès disponible à l'eau de puit et du robinet. Zone sécurisée et proche des grandes universités de Cotonou : ENEAM - UCAO - FSS - INMES."
                        , style: TextStyle(fontSize: 18,letterSpacing: 1.7),)
                    ],
                  ),
                  // borderOnForeground: false,
                  color: Colors.white,

                )

              ],
            ),

          ],
        ),

      )) : (Scaffold(
      //When call from default page
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

          )
        ],

      ),
        body:ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    //Images defilantes
                    Padding(

                      child: Stack(
                        children: <Widget>[

                          Card(
                            elevation: 2,
                            child:   Container(
                              width:screenWidth,
                              height: imageHeight,
                              //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(_locationImages[_locationIndex]),
                                    fit: BoxFit.cover,

                                  ),
                                  borderRadius: BorderRadius.circular(15)
                              )
                              ,
                            ),
                            borderOnForeground: true,
                            color: Colors.white,
                          ) ,

                          Positioned(

                            child: SelectedPhoto(index: _locationIndex,numberOfDots: _locationImages.length,),
                            top: dotTop,
                            left: 25.0,
                            right: 25.0,
                          )
                          ,
                          Positioned(
                            child: IconButton(
                              //disabledColor: Colors.grey.withOpacity(3.0),
                              icon: Icon(Icons.arrow_back_ios, size: 40,color: Colors.blueAccent,),
                              onPressed: _previousImage,
                            ),
                            top: iconTop,
                            left: 0.0,
                          ),
                          Positioned(
                            child: IconButton(
                              //disabledColor: Colors.grey.withOpacity(3.0),
                              icon: Icon(Icons.arrow_forward_ios, size: 40,color: Colors.blueAccent,),
                              onPressed: _nextImage,
                            ),
                            top: iconTop,
                            right: 0.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    )
                    ,
                    //Precedent suivant
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Précédent"),
                          color: Colors.blueAccent,
                          onPressed: _previousImage,
                        ),
                        SizedBox(width: 50),
                        RaisedButton(
                          child: Text("Suivant"),
                          color: Colors.indigo,
                          onPressed: _nextImage,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  //margin: EdgeInsets.only(top: 10, left:30),

                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Chambre Salon Sanitaire",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text("35000 CFA",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,  fontWeight: FontWeight.bold),
                          )
                        /*Padding(
                   child:  Text("35000 CFA",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),

                   ),*/
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Notez : ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              IconButton(
                                icon: iconList[0],
                                iconSize: 30,
                                onPressed:(){_noter(1);print("Tap => $iconList");},
                              ),IconButton(
                                icon: iconList[1],
                                iconSize: 30,
                                onPressed: (){_noter(2);print("Tap => $iconList");},
                              ),IconButton(
                                icon: iconList[2],
                                iconSize: 30,
                                onPressed: (){_noter(3);print("Tap => $iconList");},
                              ),IconButton(
                                icon: iconList[3],
                                iconSize: 30,
                                onPressed: (){_noter(4);;print("Tap => $iconList");},
                              ),IconButton(

                                icon:iconList[4],
                                iconSize:30,
                                onPressed: (){_noter(5);},
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text("Louer", style: TextStyle( fontSize: 20, color: Colors.white),),
                                disabledColor: Colors.green,
                                textColor: Colors.white,
                              ),
                              SizedBox(width:20,height: 10,),
                              FlatButton(
                                child: Text("Reserver", style: TextStyle( fontSize: 20, color: Colors.white),),
                                disabledColor: Colors.indigo,
                                textColor: Colors.white,
                              ),
                              SizedBox(width: 20,)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  color: Colors.white,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child:   Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[


                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:Text(
                          "Description", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Chambre salon ordinaire avec compteur personnel. Accès disponible à l'eau de puit et du robinet. Zone sécurisée et proche des grandes universités de Cotonou : ENEAM - UCAO - FSS - INMES."
                        , style: TextStyle(fontSize: 18,letterSpacing: 1.7),)
                    ],
                  ),
                  // borderOnForeground: false,
                  color: Colors.white,

                )

              ],
            ),

          ],
        ),

      ));

  }
}

class SelectedPhoto extends StatelessWidget {
  final int index, numberOfDots;
  SelectedPhoto({this.index, this.numberOfDots});
  Widget _inactivePhoto()
  {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      ),
    );
  }

  Widget _activePhoto()
  {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right:5.0),
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
              color:  Colors.indigo,
              spreadRadius: 0.0,
              blurRadius: 2.0,
            )]
          ),

        ),
      ),
    );
  }

  List<Widget> buildDots()
  {
    List<Widget> dots = [];
    for(int i = 0; i< numberOfDots; i++)
        dots.add(i == index ? _activePhoto() : _inactivePhoto());
      return dots;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots(),
      ),
    );
  }
}

