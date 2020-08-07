import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
   
   print(data[0]); 

   return Scaffold(
     drawer: Drawer(
       
       child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                child: Center(
                  child: Text("MS WORD GUIDE",style: TextStyle(
                    color: Colors.black54,
                    fontSize: 54,
                  ),),
                ),
              ),
            ),
            ListTile(
              onTap: (){
               launch("https://youtube.com");
              },
              leading: Icon(Icons.home),
              title: Text("HOME"),
            ),
             ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("RATE"),
            ),
              
             ListTile(
              onTap: (){
                Share.share("i download this app from playstore");
              },
              leading: Icon(Icons.home),
              title: Text("SHARE"),
            ),
             ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return AboutPage();
                      }
                ));
              },
              leading: Icon(Icons.info_outline),
              title: Text("ABOUT"),
            )
          ],
       ),
     ),
      appBar: AppBar(
        title: Text("MS WORD SHORTCUTS"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 26.0,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return AboutPage();
                }
              ));
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index){
            return Divider(
                thickness: 2.0,
            );
        },
        itemCount: data.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              radius: 22.0,
              child: Text(
                "${index + 1}" , style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),),
              backgroundColor: Colors.tealAccent,
            ),
            title: Text(data[index]["key"]),
            subtitle: Text("selects texts"),
          );
        },
      ),
    );
  }
}

 