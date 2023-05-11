import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';

import 'continue_card.dart';


class ContinueWatching extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.6,
      height: size.height*.3,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Continue watching",style: TextStyle(color: Colors.white,fontSize: size.width*.012,fontWeight: FontWeight.w800),),
          Container(width: size.width,
            height: size.height*.22,
            child: ListView.builder(
                itemCount: continueList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  Media continueModel=continueList[index];
                  return ContinueCard(media:continueModel);
                }),
          )
        ],
      ),
    );
  }
}
