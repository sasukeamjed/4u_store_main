import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.green.shade300,
        ),
        Column(
          children: <Widget>[
            AppBar(
              title: Text(
                'More',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Country'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(height: 0.0, color: Colors.red,),
                  ListTile(
                    title: Text('Currency'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Customer Service'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(height: 0.0, color: Colors.red,),
                  ListTile(
                    title: Text('App Suggestion'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(height: 0.0, color: Colors.red,),
                  ListTile(
                    title: Text('Rate The App'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
