import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utils/constants.dart' as cons;

class CitySlider extends StatefulWidget {
  final List<String> imagesList;

  const CitySlider({Key key, this.imagesList}) : super(key: key);

  @override
  _CitySliderState createState() => _CitySliderState();
}

class _CitySliderState extends State<CitySlider> {
  var _current = 0;

//dots of images
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (int i = 0; i < list.length; i++) result.add(handler(i));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final currentLang = Localizations.localeOf(context).languageCode;
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: double.infinity,
            //new
            initialPage: 0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            onPageChanged: (index, _) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.imagesList
              .map((image) => SliderItem(
                    imageUrl: image,
                  ))
              .toList(),
        ),
        Positioned(
          top: 10,
          left: currentLang == 'en' ? 10 : null,
          right: currentLang == 'ar' ? 10 : null,

          child: Container(
            width: 30,
            height: 30,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: cons.COLOR_WHITE,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          //    ),
        ),
        Positioned(
          top: 10,
          left: currentLang == 'ar' ? 10 : null,
          right: currentLang == 'en' ? 10 : null,
          child: IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: cons.COLOR_WHITE,
            ),
            onPressed: () {},
          ),
        ),
        //),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          //width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(widget.imagesList, (index) {
              return Container(
                width: 15,
                height: 5,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _current == index
                        ? Theme.of(context).primaryColor
                        : cons.COLOR_GREY),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class SliderItem extends StatelessWidget {
  final String imageUrl;

  const SliderItem({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
    );
  }
}

// return ClipRRect(

//   borderRadius: BorderRadius.only(
//     bottomLeft: Radius.circular(15),
//     bottomRight: Radius.circular(15),
//   ),
//   child: Image(
//     image: AssetImage(imageUrl),
//     fit: BoxFit.cover,
//   ),
// );
