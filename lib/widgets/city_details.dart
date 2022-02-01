import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/constants.dart' as cons;

import '../models/city.dart';
import '../screens/webview_screen.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city.name[lang],
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
              '( ${city.reviews} ${AppLocalizations.of(context).reviews})',
              style: cons.textTheme.bodyText1,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          city.description[lang],
          style: cons.textTheme.bodyText2,
        ),
        SizedBox(
          height: 2,
        ),
        InkWell(
          onTap: () => Navigator.of(context)
              .pushNamed(WebviewScreen.ROUTE_NAME, arguments: city.url[lang]),
          child: Text(
            AppLocalizations.of(context).readMore,
            style: cons.textTheme.bodyText2.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
