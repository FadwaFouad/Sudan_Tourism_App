import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/constants.dart' as cons;

import '../providers/data_provider.dart';
import '../widgets/city_details.dart';
import '../widgets/city_slider.dart';
import '../screens/options_screen.dart';
import '../widgets/city_travel_options.dart';

class CityScreen extends StatelessWidget {
  static const ROUTE_NAME = '/city_screen';
  @override
  Widget build(BuildContext context) {
    final cityData = Provider.of<DataProviders>(context).getCityData();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
              width: size.width,
              height: size.height * 0.30,
              child: CitySlider(
                imagesList: cityData.first.images,
              )),
          SizedBox(height: 30),
          Container(
              width: size.width,
              height: size.height * 0.30,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CityDetails(
                city: cityData.first,
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(AppLocalizations.of(context).travelGuide,
                style: cons.textTheme.headline2),
          ),
          SizedBox(height: 5),
          Container(
            width: size.width,
            margin: EdgeInsets.all(10),
            child: CityTravelOptions(),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: Text(AppLocalizations.of(context).letGo),
              onPressed: () =>
                  Navigator.of(context).pushNamed(OptionsScreen.ROUTE_NAME),
            ),
          ),
        ],
      ),
    );
  }
}
