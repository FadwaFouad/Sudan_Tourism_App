import 'package:flutter/material.dart';

import '../utils/constants.dart' as cons;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/place.dart';

class OptionList extends StatelessWidget {
  final List<Place> list;

  const OptionList({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return OptionItem(place: list[index]);
      },
      itemCount: list.length,
    );
  }
}

class OptionItem extends StatelessWidget {
  final Place place;
  final heightRatio = 0.15;

  Widget buildReviewWidget(double rating, String review, BuildContext ctx) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: cons.textTheme.bodyText2,
        ),
        SizedBox(width: 0.5),
        Icon(
          Icons.star,
          size: 20,
          color: Theme.of(ctx).primaryColor,
        ),
        SizedBox(width: 5),
        Text(
          '( $review ${AppLocalizations.of(ctx).reviews})',
          style: cons.textTheme.bodyText2.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget buildLocWidget(String loc) {
    return Row(
      children: [
        Icon(
          Icons.location_pin,
          color: cons.COLOR_GREY,
          size: 20,
        ),
        SizedBox(
          width: 2,
        ),
        Text(loc,
            style: cons.textTheme.bodyText2.copyWith(
              color: cons.COLOR_GREY,
            )),
      ],
    );
  }

  const OptionItem({Key key, this.place}) : super(key: key);

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final lang = Localizations.localeOf(context).languageCode;

    return Container(
      height: size.height * heightRatio,
      width: size.width,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    place.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text(
                            place.name[lang],
                            style: cons.textTheme.headline3,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FittedBox(
                            child: buildReviewWidget(
                                place.rating, place.reviews, context)),
                        SizedBox(
                          height: 5,
                        ),
                        FittedBox(child: buildLocWidget(place.location[lang])),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
