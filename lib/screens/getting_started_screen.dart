import 'package:challenge_page_slider_carousel/model/slide.dart';
import 'package:challenge_page_slider_carousel/screens/widgets/slideItem.dart';
import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  final PageController _pageController = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
              child: Column(
          children: <Widget>[

            Expanded(
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: slideList.length,
                itemBuilder: (ctx,i)=>SlideItem(i),
              ),
            ),

            Column(children: <Widget>[
              Text('Hello')
            ],),
            Column(children: <Widget>[
              FlatButton(child: Text('Getting Started'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: (){},
              padding: const EdgeInsets.all(15),
              ),
              Row(children: <Widget>[
                Text('Have an account?'),
                FlatButton(child: Text('Logout'),onPressed: (){},)
              ],)
            ],)
          ],
        ),
      ),
    );
  }
}