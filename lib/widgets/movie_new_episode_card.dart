import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';

class MovieNewEpisodeCard extends StatefulWidget {
final Media media;

MovieNewEpisodeCard({this.media});

  @override
  State<MovieNewEpisodeCard> createState() => _MovieNewEpisodeCardState();
}

class _MovieNewEpisodeCardState extends State<MovieNewEpisodeCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.1);
    final transform = isHover ? hoverTransform : Matrix4.identity();
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (value){
        setState(() {
          isHover = true;
        });
      },
      onExit: (value){
        setState(() {
          isHover = false;
        });
      },

      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: transform,
        child: Container(
          width: size.width * .1,
          height: size.height * .3,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                  color: mainColor.withOpacity(.5),
                  offset: Offset(10,10),
                  blurRadius: 15
              ),],
              image: DecorationImage(image: NetworkImage(widget.media.episodeImage),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(100)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.4),
                    borderRadius: BorderRadius.circular(100)),
              )),
            Text("Episode 6\nSeason 5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)
          ],),
        ),

      ),
    );
  }
}
