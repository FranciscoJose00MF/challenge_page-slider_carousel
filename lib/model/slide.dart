import 'package:flutter/cupertino.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });
}
  final slideList=[
    Slide(
      imageUrl: 'img/01.jpg',
      title: 'france 1',
      description: 'Lorem 1',
    ),
    Slide(
      imageUrl: 'img/01.jpg',
      title: 'france 2 ',
      description: 'Lorem 1',
    ),
    Slide(
      imageUrl: 'img/01.jpg',
      title: 'france 3',
      description: 'Lorem 1',
    ),
  ];

