import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';


class ContinueCard extends StatelessWidget {
  final Media media;

  ContinueCard({this.media});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width * .01),
      width: size.width * .2,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(media.imageUrl)),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                         Colors.black.withOpacity(.9)
                        ])),
              )),
          Positioned(
            bottom: 0,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .02, vertical: size.height * .01),
                width: size.width ,
                height: size.height * .1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      media.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .01),
                    ),
                    Text(
                      media.year.toString(),
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .007),
                    ),
                    Container(
                      width: size.width*.17,
                      height: size.height*.02,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("42:20",style: TextStyle(color: Colors.white.withOpacity(.5),fontWeight: FontWeight.w500,fontSize: size.width*.006),),
                          Container(width: size.width*.1,
                            height: size.height*.003,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.white.withOpacity(.5),
                              value: media.value,
                              valueColor: AlwaysStoppedAnimation(
                                  mainColor,
                              )
                            ),
                          )
                          ,Text("1:30:06",style: TextStyle(color: Colors.white.withOpacity(.5),fontWeight: FontWeight.w500,fontSize: size.width*.006),)
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
