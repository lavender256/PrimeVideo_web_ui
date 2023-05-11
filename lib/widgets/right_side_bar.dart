import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/widgets/trailer_card.dart';


class RightSideBar extends StatefulWidget {

  @override
  State<RightSideBar> createState() => _RightSideBarState();
}

class _RightSideBarState extends State<RightSideBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.02),
      width: size.width*.25,
      height: size.height,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
              padding: EdgeInsets.symmetric(vertical: size.height*.02),
              sliver: SliverToBoxAdapter(child: Text("New trailers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: size.width*.012),))),
          SliverList(delegate: SliverChildBuilderDelegate((BuildContext context,int index)
      {
        Media media=trailerList[index];
      return TrailerCard(media:media);
      },childCount: trailerList.length))]));

  }
}
