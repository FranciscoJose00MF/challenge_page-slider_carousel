import 'package:challenge_page_slider_carousel/model/slide.dart';
import 'package:flutter/material.dart';
// import 'package:challenge_page_slider_carousel/model/slide.dart' as slideList;



class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(slideList[index].imageUrl),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Text(
                      slideList[index].title,
                    )
                  ],
                ),
              ],
            );
  }
}