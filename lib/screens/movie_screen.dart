import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/widgets/cast_slimy_card.dart';
import 'package:prime_video_web_ui/widgets/movie_download.dart';
import 'package:prime_video_web_ui/widgets/movie_new_episode.dart';
import 'package:prime_video_web_ui/widgets/movie_new_episode_card.dart';

class MovieScreen extends StatefulWidget {
  final Media media;

  MovieScreen({this.media});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: NetworkImage(widget.media.imageUrl))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                right: 0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: ClipPath(
                    clipper: DiagonalPathClipperOne(),
                    child: Container(
                      width: size.width * .5,
                      height: size.height * .7,
                      color: movieScafColor
                    ),
                  ),
                )),
            Positioned(
                left: 0,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: ClipPath(
                    clipper: DiagonalPathClipperOne(),
                    child: Container(
                      width: size.width * .5,
                      height: size.height * .8,
                      color: movieScafColor
                    ),
                  ),
                )),
            Positioned(
                left: size.width * .05,
                top: size.height * .35,
                child: Container(
                  width: size.width * .6,
                  height: size.height * .34,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       widget.media.title.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: size.width * .06,
                            ),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: widget.media.title2.toUpperCase(),
                          style: TextStyle(  fontFamily: 'entsani',
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w300,
                              fontSize: size.width * .06,
                            ),
                        ),
                        TextSpan(
                          text: "  ${widget.media.title3}".toUpperCase(),
                          style: TextStyle(  fontFamily: 'entsani',
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: size.width * .06,
                            ),
                        )
                      ]))
                    ],
                  ),
                )),
            Positioned(right: size.width*.05,
                child: MovieNewEpisode()),
            Positioned(
                right: size.width * .26,
                child: MovieNewEpisodeCard(media: widget.media,)),
            Positioned(
                bottom: size.height*.08,
                left: size.width*.05,
                child: MovieDownload(media: widget.media,)),
            Positioned(
              left: size.width*.01,
              top: size.height * .03,
              child: Container(
                width: size.width * .1,
                height: size.height * .1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            "https://s8.uupload.ir/files/46_8zgx.png"))),
              ),
            ),
            Positioned(
              top: size.height*.2,
              left: size.width*.05,
              child:  Text(
              widget.media.name,
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w900,
                fontSize: size.width * .025,
              ),
            ),),
            Positioned(
                top: size.height * .05,
                right: size.width * .05,
                child: CastSlimyCard(media:widget.media)),
          ],
        ),
      ),
    );
  }
}
