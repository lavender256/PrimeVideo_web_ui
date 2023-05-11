import 'package:flutter/material.dart';

class PageTransition extends PageRouteBuilder{
  final Widget targetPage;

  PageTransition({this.targetPage}):
        super(
          pageBuilder: (context,animation,anotherAnimation)=>targetPage,
          transitionsBuilder: (context,animation,anotherAnimation,child){
            animation=CurvedAnimation(parent: animation, curve: Curves.linear);
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: targetPage,
                axis: Axis.horizontal,
              ),
            );
          }  ,
          transitionDuration: Duration(milliseconds: 700)
      )
  ;
}