import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/data/data.dart';


class LeftMenuOption extends StatefulWidget {
final int index;


LeftMenuOption({this.index});

  @override
  State<LeftMenuOption> createState() => _LeftMenuOptionState();
}

class _LeftMenuOptionState extends State<LeftMenuOption> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..translate(5,2,0)..scale(1.1);
    final transform = isHover ? hoverTransform : Matrix4.identity();
    var size = MediaQuery.of(context).size;
    return  MouseRegion(
        onEnter: (value){
      setState(() {
        isHover = true;
      });
    },
    onExit: (value){
    setState(() {
    isHover = false;
    });
    },
      child: AnimatedContainer( duration: Duration(milliseconds: 300),
        transform: transform,
        child: Container(margin: EdgeInsets.only(bottom: size.height*.05),
          child: Text(menuList[widget.index].toUpperCase(),
            style: TextStyle(color: isHover?mainColor:Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );;
  }
}
