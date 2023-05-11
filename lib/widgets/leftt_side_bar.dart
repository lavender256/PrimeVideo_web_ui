import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/widgets/search_bar.dart';

import 'left_side_menu.dart';

class LeftSideBar extends StatefulWidget {

  @override
  State<LeftSideBar> createState() => _LeftSideBarState();
}

class _LeftSideBarState extends State<LeftSideBar> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color: secColor,
      padding: EdgeInsets.only(left: size.width*.03,top: size.height*.03,right: size.width*.01),
      width: size.width*.15,
      height: size.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          SizedBox(height: size.height*.2,),
          LeftSideMenu()
        ],
      ),
    );
  }
}
