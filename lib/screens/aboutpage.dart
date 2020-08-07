import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About app"),
        ),

        body: Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" this is app about shortcuts of microsoft word",
                style: TextStyle(
                  fontSize: 17.0,),
                
                ),
              ),
            ),
            RaisedButton(
              color: Colors.transparent,
              onPressed: (){
                Navigator.pop(context);
              },
              child:  Text(
                "go back", style: TextStyle(
                  color: Colors.black, 
                ),
              ),
            )
          ],
        ),
    );
  }
}