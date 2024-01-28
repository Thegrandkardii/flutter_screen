import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:mobile_application/album.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    String mainTitle ="";
    List<String> items =[];


      void _getData() async{ 
      String urlString = "https://jsonplaceholder.typicode.com/albums/1/";
      Uri uri = Uri.parse(urlString);
      var response = await http.get(uri);
              print("Response Code" + response.statusCode.toString());

      if (response.statusCode == 200){
        var responseDecoded = jsonDecode(response.body) as Map <String, dynamic>;
       
        String title = responseDecoded["title"];
        print("Result"+ title);
        mainTitle = title;
      } else {}
      }

      void _getListData() async{
        String urlString = "https://jsonplaceholder.typicode.com/albums/1/";
         Uri uri = Uri.parse(urlString);
         var response = await http.get(uri);
         if (response.statusCode == 200){
          var responseDecoded = jsonDecode(response.body); as List<dynamic>;
          responseDecoded.forEach((item){
            var id = item["id"];
            var title= items["title"];
            var Userid = item ["Userid"];
            Album album 
            items.add(item);

          }

          );
          setState(() {
            
          });
         }else{}
          


          




         }
      }



      

 @override
    void initState (){
      _getData();
      _getListData()
      super.initState();
    }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( 
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  
 
 


    }
   
  }
