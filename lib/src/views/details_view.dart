import 'package:flutter/material.dart';


class DetailsView extends StatelessWidget {
  const DetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Move details'),
          backgroundColor: Colors.green[300],
          actions: [
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: () {}
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("Details")
            ],
          ),
        )
    );
  }

  /* Methods */
  
}