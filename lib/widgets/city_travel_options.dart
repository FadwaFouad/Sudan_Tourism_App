import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/constants.dart' as cons;
import '../providers/data_provider.dart';
import '../models/city.dart';

class CityTravelOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TravelOption> optionsList =
        Provider.of<DataProviders>(context, listen: false)
            .getCityTravelOption();

    return GridView.builder(
      shrinkWrap: true,
      // physics: FixedExtentScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 3,
      ),
      itemBuilder: (ctx, index) => OptionItem(item: optionsList[index]),
      itemCount: optionsList.length,
    );
  }
}

class OptionItem extends StatelessWidget {
  final TravelOption item;

  const OptionItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
        ),

        //senter icon

        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.withOpacity(0.4),
          child: Center(
            child: Column(
              //new
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  size: 30,
                  color: cons.COLOR_WHITE,
                ),
                Text(
                  item.name[lang],
                  style: cons.textTheme.headline5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
