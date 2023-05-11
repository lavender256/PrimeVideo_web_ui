import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/data/color.dart';
import 'package:prime_video_web_ui/data/data.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/widgets/category_card.dart';
import 'package:prime_video_web_ui/widgets/leftt_side_bar.dart';



class CategoryScreen extends StatefulWidget {
  final String imageUrl;

  CategoryScreen({this.imageUrl});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isOpen=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Color(0xff0e0e0e),
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(top: 0, left: 0, child: LeftSideBar()),
                  Positioned(
                    left: size.width * .15,
                    top: 0,
                    child: Container(
                      width: 1.5,
                      height: size.height,
                      color: mainColor
                    ),
                  ),
                  Container(
                    width: 1.5,
                    height: size.height,
                    color: mainColor
                  ),
                  Positioned(
                    right: size.width * .15,
                    top: 0,
                    child: Container(
                      width: 1.5,
                      height: size.height,
                      color: mainColor,
                    ),
                  ),
                  Positioned(
                    top: size.height * .03,
                    child: Container(
                      width: size.width * .1,
                      height: size.height * .07,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://s8.uupload.ir/files/primevideo-seo-logo-transformed_bt45.png"))),
                    ),
                  ),
                  Positioned(
                    left: size.width * .15,
                    top: size.height * .12,
                    child: Container(
                      width: size.width * .78,
                      height: size.height * .8,
                      child: ListView.builder(
                          itemCount: categoryList.length,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            double margin = 0;
                            index == 2 || index == 5 ? margin = 60.0 : index ==
                                1 || index == 3 || index == 6
                                ? margin = 40
                                : margin = 0.0;
                            Media media = categoryList[index];
                            return CategoryCard(
                              margin: margin, media: media,);
                          }),
                    ),
                  ),
                ])));
  }}