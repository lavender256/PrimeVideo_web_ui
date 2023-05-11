import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/model/media.dart';


class MovieDownload extends StatelessWidget {
final Media media;

MovieDownload({this.media});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(width: size.width*.4,
      height: size.height*.2,
      child: Row(children: [
        Container(width: size.width*.04,
          height: size.width*.04,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 2)
          ),
          child: Center(child: IconButton(icon: Icon(Iconsax.arrow_down,color: mainColor),onPressed: null,),),
        ),
        Spacer(),
        Container(width: size.width*.14,
          height: size.height*.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: NetworkImage(media.episodeImage2),fit: BoxFit.cover)
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
            Positioned.fill(child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black.withOpacity(.4),))),
            Text("Episode 5",style: TextStyle(color: Colors.white),)
          ],),
        ),
        SizedBox(width: size.width*.01,),
        Container(width: size.width*.14,
          height: size.height*.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: NetworkImage(media.episodeImage3),fit: BoxFit.cover)
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
            Positioned.fill(child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
            color: Colors.black.withOpacity(.4),))),
            Text("Episode 4",style: TextStyle(color: Colors.white),)
          ],),
        ), SizedBox(width: size.width*.01,),
        Container(width: size.width*.04,
          height: size.width*.04,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 2)
          ),
          child: Center(child: IconButton(icon: Icon(Iconsax.more,color: mainColor),onPressed: null,),),
        ),
      ],),
    );
  }
}
