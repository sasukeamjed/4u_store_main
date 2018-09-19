import 'package:flutter/material.dart';

Widget searchBar (double appBarHieght){
  return Container(
    margin: EdgeInsets.only(bottom: 8.0),
    height: appBarHieght * 0.06,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 5.0,
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 20.0,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration:
              InputDecoration.collapsed(hintText: 'search here...'),
            ),
          ),
        ),
      ],
    ),
  );
}
