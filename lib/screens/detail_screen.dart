import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/widgets/continue_watching.dart';
import 'package:prime_video_web_ui/widgets/leftt_side_bar.dart';
import 'package:prime_video_web_ui/widgets/right_side_bar.dart';
import 'package:prime_video_web_ui/widgets/top_rated.dart';
import 'package:prime_video_web_ui/widgets/trending.dart';


class DetailScreen extends StatefulWidget {

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: secColor,
      body:Container(
          padding: EdgeInsets.only(top: size.height*.05),
          width: size.width ,
        height: size.height,
        child:Row(children: [
          LeftSideBar(),
          SingleChildScrollView(
            child: Column(
              children: [
                Trending(),
                SizedBox(height: size.height*.02,),
                ContinueWatching(), SizedBox(height: size.height*.02,),
                TopRated()
              ],
            ),
          ),
          RightSideBar()
        ],)
      ));
  }
}
