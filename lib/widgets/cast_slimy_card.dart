import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:slimy_card/slimy_card.dart';

class CastSlimyCard extends StatefulWidget {
  final Media media;

  CastSlimyCard({this.media});

  @override
  State<CastSlimyCard> createState() => _CastSlimyCardState();
}

class _CastSlimyCardState extends State<CastSlimyCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: SlimyCard(
        width: size.width * .1,
        slimeEnabled: false,
        bottomCardHeight: size.height * .8,
        topCardHeight: size.height * .2,color: Colors.transparent,
        topCardWidget: Container(
          child: Center(child:Text("Casts",style: TextStyle(color: mainColor),)),
        ),
        bottomCardWidget: Container(
          width: size.width * .1,
          child: ListView.builder(
              itemCount: widget.media.actList.length,
              itemBuilder: (BuildContext context, int index) {
                return RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: size.height * .007),
                    width: size.width * .056,
                    height: size.width * .056,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainColor, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(fit:BoxFit.fill,
                            image: NetworkImage(widget.media.actList[index],),
                           )),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
