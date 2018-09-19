import 'package:flutter/material.dart';
import 'widgets/search_bar.dart';
import 'widgets/carousel.dart';
import 'widgets/navigation_buttons.dart';

class Home extends StatelessWidget {
  Home(this.screenHeight);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: 25.0, left: 8.0, right: 8.0, bottom: 8.0),
      color: Colors.green.shade300,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: <Widget>[
            searchBar(fullHeight),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 5.0),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              //child: searchBar,
            ),
            Container(
              height: screenHeight / 3,
              child: ImageCarousel(),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  navigationButton(
                      Icons.menu, Colors.white, Colors.green, 'All Categories'),
                  navigationButton(
                      Icons.favorite, Colors.white, Colors.green, 'Bed Rooms'),
                  navigationButton(
                      Icons.face, Colors.white, Colors.green, 'Kitchen'),
                  navigationButton(Icons.favorite_border, Colors.white,
                      Colors.green, 'Bathrooms'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
