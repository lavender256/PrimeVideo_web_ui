import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prime_video_web_ui/data/color.dart';


class SearchBar extends StatefulWidget {

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.01),
      width:  size.width*.11,
    height: size.height*.05,

      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
            suffixIcon: Icon(Iconsax.search_normal,color: Colors.white,),
          enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none
          ),
        ),
      ),
    );
  }
}
