import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prime_video_web_ui/model/media.dart';

class TrailerCard extends StatelessWidget {
final Media media;

TrailerCard({this.media});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(width: size.width*.16,
      margin: EdgeInsets.only(bottom: size.height*.02),
      height: size.height*.25,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(media.imageUrl)),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: BlurryContainer(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                blur: 10,width: size.width*.21, height: size.height*.09,
                child: Container(width: size.width*.21,
           padding: EdgeInsets.symmetric(horizontal: size.width*.015),
           height: size.height*.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(width: size.width*.025,
                    height: size.width*.025,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.4)
                      ),
                      child: Center(child: Icon(Iconsax.play5,color: Colors.white,),),
                    ),
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(media.name,style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w700
                        ),),
                        Text("${media.year} hrs ago",style: TextStyle(
                            color: Colors.white.withOpacity(.5),fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                      Container(width: size.width*.04,
                        height: size.height*.03,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(.7)
                        ),
                        child: Center(child: Text("02:29",style: TextStyle(color: Colors.black,fontSize: size.width*.007,),)),
                      ),
                  ],)
          ),
              )),
          Positioned(
              top: size.height*.02,
              right: size.height*.02,
              child: Container(
                  width: size.width*.05,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Icon(FrinoIcons.f_eye,color: Colors.white,)
                    ,Text("${media.view} M",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)])))
        ],
      ),
    );
  }
}
