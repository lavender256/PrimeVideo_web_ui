import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/data.dart';


import 'left_menu_option.dart';

class LeftSideMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(width: size.width,
        height: size.height * .33,
        child: ListView.builder(
            itemCount: menuList.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
          return LeftMenuOption(index:index);
        })
    );
  }
}
