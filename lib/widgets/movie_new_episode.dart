import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';


class MovieNewEpisode extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .25,
        height: size.width * .25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white,width: 2)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: size.width*.091,
              height: size.height*.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: size.width*.07,
                    height: size.height*.035,
                    decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "New Episode",
                        style: TextStyle(fontSize: size.width*.006,

                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Text("Watch".toUpperCase(),style: TextStyle(  decoration: TextDecoration.underline,color: Colors.black.withOpacity(.7),fontWeight: FontWeight.w300,fontSize: size.width*.02),),
                  Container(width: size.width*.1,
                    height: size.height*.06,
                    child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Now".toUpperCase(),style: TextStyle(  decoration: TextDecoration.underline,color: Colors.black,fontWeight: FontWeight.w300,fontSize: size.width*.02),),
                        SizedBox(
                          width: size.width*.01,
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ON",style: TextStyle(color: Colors.black,fontSize:size.width*.008 ,fontWeight:FontWeight.w800 ),),
                            Image.network("https://s8.uupload.ir/files/46_8zgx.png",width:size.width*.02,)
                          ],
                        )
                      ],),
                  )
                ],
              ),
            ),
          ],)
    );
  }
}
