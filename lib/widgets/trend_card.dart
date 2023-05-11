import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/screens/movie_screen.dart';



class TrendCard extends StatelessWidget {
  final Media media;

  TrendCard({this.media});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>MovieScreen(media: media,))),
      child: Container(
        margin: EdgeInsets.only(right: size.width * .01),
        width: size.width * .35,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                image: NetworkImage(media.imageUrl)),
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
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(.8),Colors.black.withOpacity(.9)
                  ])),
            )),
            Positioned(
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .02, vertical: size.height * .01),
                  width: size.width * .35,
                  height: size.height * .13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            media.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * .0115),
                          ),
                          Text(
                            media.year.toString(),
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * .008),
                          ),
                          Container(
                            width: size.width * .09,
                            height: size.height * .05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: size.width * .03,
                                  height: size.height * .02,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Text(
                                  "${media.rate} rating",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.9),
                                      fontSize: size.width * .009),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: size.width * .13,
                        height: size.height * .05,
                        child: Row(
                          children: [
                            Container(
                              width: size.width * .08,
                              height: size.height * .05,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  "Watch now",
                                  style: TextStyle(
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
      ),
    );
  }
}
/**/
