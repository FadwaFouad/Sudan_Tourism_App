import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../utils/constants.dart' as cons;

import '../models/preview.dart';
import '../providers/data_provider.dart';

class PreviewSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final previewList = Provider.of<DataProviders>(context).getPreviewData();

    return CarouselSlider(
      options: CarouselOptions(
          initialPage: 0,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          onPageChanged: (i, _) {}),
      items: previewList
          .map((preview) => SliderItem(
                preview: preview,
              ))
          .toList(),
    );
  }
}

class SliderItem extends StatelessWidget {
  final Preview preview;

  const SliderItem({Key key, this.preview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            // with same as home screen height
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                preview.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            //width: MediaQuery.of(context).size.width,

            child: Container(
              //should define height
              //  width: MediaQuery.of(context).size.width * 0.5,
              //padding margin
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: cons.COLOR_GREY.withOpacity(0.8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      Localizations.localeOf(context) ==
                              Locale.fromSubtags(languageCode: 'ar')
                          ? preview.placeAr
                          : preview.place,
                      style: cons.textTheme.headline3),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Theme.of(context).primaryColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        Localizations.localeOf(context) ==
                                Locale.fromSubtags(languageCode: 'ar')
                            ? preview.cityAr
                            : preview.city,
                        style: cons.textTheme.headline4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 1,
            right: 1,
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: preview.isFav ? cons.COLOR_Red : cons.COLOR_BLACK,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
