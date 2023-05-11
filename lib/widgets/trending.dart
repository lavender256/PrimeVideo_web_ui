import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/widgets/trend_card.dart';


class Trending extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.6,
      height: size.height*.42,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Trending movies & series",style: TextStyle(color: Colors.white,fontSize: size.width*.012,fontWeight: FontWeight.w800),),
        Container(width: size.width,
        height: size.height*.32,
          child: ListView.builder(
              itemCount: trendList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                Media media=trendList[index];
            return TrendCard(media: media,);
          }),
        )
      ],
      ),
    );
  }
}
