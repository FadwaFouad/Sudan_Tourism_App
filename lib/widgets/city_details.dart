import 'package:flutter/material.dart';

import '../models/city.dart';
import '../utils/constants.dart' as cons;

class CityDetails extends StatelessWidget {
  final City city;

  const CityDetails({Key key, this.city}) : super(key: key);

  Widget buildRatingWidget(double rating, BuildContext ctx) {
    return Row(
      children: [
        Text(rating.toString()),
        SizedBox(width: 1),
        Icon(
          Icons.star,
          color: Theme.of(ctx).primaryColor,
        ),
      ],
    );
    // return RatingBar.builder(
    //   initialRating: rating,
    //   minRating: 1,
    //   direction: Axis.horizontal,
    //   allowHalfRating: true,
    //   itemCount: 5,
    //   itemPadding: EdgeInsets.symmetric(horizontal: 4),
    //   itemBuilder: (ctx, _) => Icon(
    //     Icons.star,
    //     color: Theme.of(ctx).primaryColor,
    //   ),
    //   onRatingUpdate: (rating) {},
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city.name,
          style: cons.textTheme.headline2,
        ),
        SizedBox(
          height: 1,
        ),
        Row(
          children: [
            buildRatingWidget(city.rating, context),
            SizedBox(width: 10),
            Text(
              '( ${city.reviews} Reviews)',
              style: cons.textTheme.bodyText1,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          city.description,
          style: cons.textTheme.bodyText2,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Read more >',
          style: cons.textTheme.bodyText2.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),

        // ReadMoreText(
        //   city.description,
        //   trimLines: 2,
        //   colorClickableText: Theme.of(context).primaryColor,
        //   trimMode: TrimMode.Line,
        //   trimCollapsedText: cons.STRING_TEXT_COLL,
        //   trimExpandedText: cons.STRING_TEXT_EXPAN,
        //   moreStyle: cons.TEXT_THEME.bodyText1,
        // ),
      ],
    );
  }
}
