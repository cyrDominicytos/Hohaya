import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hohaya/screen/BottonNavigation.dart';
import 'package:hohaya/screen/Home.dart';
class QuickSearchPage extends StatefulWidget {
  QuickSearchPage({Key key}) : super(key: key);
  static String tag = "QuickSearchPage";
  @override
  _QuickSearchPageState createState() => _QuickSearchPageState();
}

class _QuickSearchPageState extends State<QuickSearchPage> {
  _QuickSearchPageState(){
    _filter.addListener((){

          if(_filter.text.isEmpty)
          {
            print("lISTENER EMPTY CALL => "+_filter.text);
            setState(() {
              _searchText = "";
              filteredSearchList = defaultSearchList;
            });
          }else{
            print("lISTENER CALL => "+_filter.text);
            setState(() {
              _searchText = _filter.text;

            });
          }
        });

  }
  //Pour le filtre automatique de la liste de recherche
  final TextEditingController _filter = new TextEditingController();
  //les autres champs de recherche
  TextField champText = new TextField(
    //controller: _filter
  );
  String _searchText = "";
  List defaultSearchList = new List();
  List wordList = [
    "Entrée Coucher",
    "Entrée Coucher Ordinaire",
    "Entrée Coucher Sanitaire",

    "Chambre Salon",
    "Chambre Salon Ordinaire",
    "Chambre Salon Sanitaire",

    "2 Chambres Salon",
    "2 Chambres Salon Ordinaire",
    "2 Chambres Salon Sanitaire",

    "Appartement",
    "Maison",
    "Résidence"

                  ];
  List filteredSearchList = new List();
  void _getList() async{
    print("_getList called");
    for(String _item in wordList)
        defaultSearchList.add(_item);
    setState(() {
      filteredSearchList = defaultSearchList;
    });
  }
@override
void initState() {
   _getList();
    super.initState();
  }
 // _getList();
  @override
  Widget build(BuildContext context) {
    //_getList();
    print("Default size => ${defaultSearchList.length}");
   if(!(_searchText.isEmpty))
     {
       List tempList = new List();
       for(int i = 0; i < filteredSearchList.length; i++)
         if(filteredSearchList[i].toString().toLowerCase().contains(_searchText.toLowerCase()))
           {
             tempList.add(filteredSearchList[i]);
             print(filteredSearchList[i] + " Added");
           }


       filteredSearchList =  tempList;
     }

    return /*Scaffold(
      appBar: AppBar(
        title: TextField(controller: _filter,decoration: InputDecoration(hintText: "Tapez ici..." ),autofocus: true, autocorrect: true,),
           backgroundColor: Colors.blue,
      ),
      body: */
    Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: TextField(controller: _filter,decoration: InputDecoration(hintText: "Tapez ici..." ),autofocus: false,),
        ),
       /* Row(
          children: <Widget>[
            TextField(controller: _filter,decoration: InputDecoration(hintText: "Tapez ici..." ),autofocus: false,),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),*/
        Container(
          height: 400,
          child:   ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: defaultSearchList == null ? 0 : filteredSearchList.length ,
              itemBuilder: (context, index){
                return ListTile(
                    title: Text(filteredSearchList[index], textAlign: TextAlign.center,),
                    onTap:() {
                      Navigator.of(context).pushNamed(MyHomePage.tag);
                    }
                );
              }
          ),
        )


      ],
    );


  }
}
