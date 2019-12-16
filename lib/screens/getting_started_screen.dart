import 'package:challenge_page_slider_carousel/model/slide.dart';
import 'package:challenge_page_slider_carousel/screens/widgets/slideItem.dart';
import 'package:challenge_page_slider_carousel/screens/widgets/slide_dots.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage=0;
  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer){
      if(_currentPage<2){
        _currentPage++;
      }else{
        _currentPage=0;
      }

      _pageController.animateToPage(_currentPage,
      duration:
        Duration(milliseconds: 300,),
        curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index){
    setState(() {
      _currentPage=index;
    });
  }

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
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onPageChange,
                  itemCount: slideList.length,
                  itemBuilder: (ctx,i)=>SlideItem(i),
                ),
                  Stack(

                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          for(int i=0; i<slideList.length; i++ )
                            if(i==_currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],),
                      )
                    ],
                  ),
                              ]
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