import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/model/media.dart';
import 'package:prime_video_web_ui/screens/detail_screen.dart';
import 'package:prime_video_web_ui/widgets/page_transition.dart';

class CategoryCard extends StatefulWidget {
  final double margin;
  final Media  media;

  CategoryCard({this.margin, this.media});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    animation = Tween<double>(begin: 0.5, end: 0.0).animate(CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn));
   // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..translate(5, 8, 0)..scale(1.05);
    final transform = isHover ? hoverTransform : Matrix4.identity();
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
          Navigator.push(context, PageTransition(targetPage: DetailScreen()));
        });
      },
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            isHover = true;
           // controller.forward();
          });
        },
        onExit: (value) {
          setState(() {
            isHover = false;
          //  controller.reverse();
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          transform: transform,
          child: Container(
            width: size.width * .088,
            height: size.height * .1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.media.imageUrl))),
            margin: EdgeInsets.only(
                right: size.width * .01,
                top: widget.margin,
                bottom: widget.margin == 60.0
                    ? 0
                    : widget.margin == 40.0
                        ? 40
                        : 60),
            child: Stack(alignment: Alignment.center,
              children: [
                Positioned.fill(child: Container(
                  color: Colors.black.withOpacity(.3),
                )),
                Text(
                widget.media.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * .012),
                textAlign: TextAlign.center,
              ),]
            ),
          ),
        ),
      ),
    );
  }
}
