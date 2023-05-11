import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .11,
        height: size.height * .07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * .07,
              height: size.width * .07,
              decoration: BoxDecoration(color: Colors.green,
                  border: Border.all(color: Colors.white.withOpacity(.5)),
                  shape: BoxShape.circle),
            ),
            Text(
              "Sanaz",
              style: TextStyle(
                  color: Colors.white.withOpacity(.9),
                  fontWeight: FontWeight.w700,fontSize: size.width*.012),
            )
          ],
        ));
  }
}
