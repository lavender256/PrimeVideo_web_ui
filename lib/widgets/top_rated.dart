import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/widgets/top_rated_card.dart';


class TopRated extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.6,
      height: size.height*.4,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Top rated",style: TextStyle(color: Colors.white,fontSize: size.width*.012,fontWeight: FontWeight.w800),),
          Container(width: size.width,
            height: size.height*.32,
            child: ListView.builder(
                itemCount: topRatedList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  Media media=topRatedList[index];
                  return TopRatedCard(media:media);
                }),
          )
        ],
      ),
    );
  }
}
