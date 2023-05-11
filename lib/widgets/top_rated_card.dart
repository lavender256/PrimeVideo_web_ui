import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';

class TopRatedCard extends StatelessWidget {

final Media media;

TopRatedCard({this.media});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width * .01),
      width: size.width * .1,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(media.imageUrl)),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,  Colors.transparent,
                          Colors.transparent,
                          Colors.black.withOpacity(.9), Colors.black.withOpacity(.9)
                        ])),
              )),
          Positioned(
            bottom: 0,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .01, vertical: size.height * .01),
                width: size.width*.12 ,
                height: size.height * .11,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      media.name,overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .008),
                    ),
                    Text(
                      media.year.toString(),
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .006),
                    ),
                    Container(
                      height: size.height*.05,
                      child: Row(
                        children: [
                          Container(
                            width: size.width * .045,
                            height: size.height * .04,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "Watch now",
                                style: TextStyle(fontSize: size.width*.0055,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * .05,
                            height: size.width * .05,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.4),
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: Colors.white,
                                )),
                          )
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
