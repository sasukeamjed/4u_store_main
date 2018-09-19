import 'package:flutter/material.dart';
import 'carousel_pro.dart';

class ImageCarousel extends StatelessWidget {

  final carousel = Carousel(
    boxFit: BoxFit.fill,
    images: [
      AssetImage('assets/4u_1.jpg'),
      AssetImage('assets/4u_2.jpg'),
      AssetImage('assets/4u_3.jpg'),
      AssetImage('assets/4u_4.jpg'),
    ],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 2000),
  );


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        padding: EdgeInsets.all(5.0),
        height: screenHeight / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: <Widget>[
              carousel,
//              Banner(),
            ],
          ),
        ),
      ),
    );
  }
}

class Banner extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 2000),
        vsync: this);
    //the addListener function calls setState, so every time the Animation generates a new number,
    //the current frame is marked dirty; which forces build() to be called again
    animation = Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener((){
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Banner of top of carousel',
          style: TextStyle(
            fontFamily: 'fira',
            fontSize: animation.value,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}