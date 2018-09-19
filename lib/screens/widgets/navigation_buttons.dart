import 'package:flutter/material.dart';

Widget navigationButton(IconData icon, Color firstColor, Color rightColor, String iconTitle){
  return GestureDetector(
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [firstColor, rightColor],
              stops: [0.005, 0.9],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.redAccent.shade200,
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon ,size: 30.0,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(iconTitle),
        ),
      ],
    ),
    onTap: () {
      debugPrint('button is tapped');
    },
  );
}