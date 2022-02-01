import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/constants.dart' as cons;
import '../providers/data_provider.dart';
import '../widgets/home_horizontal_list.dart';
import '../widgets/home_preview_slider.dart';
import '../widgets/home_topic_bar.dart';
import '../widgets/home_welcome_bar.dart';
import '../screens/city_screen.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.account_circle,
              color: cons.COLOR_GREY,
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: EdgeInsets.only(bottom: 50),
        children: [
          SizedBox(height: 10),
          Container(height: 40, child: WelcomeBar()),
          SizedBox(height: 10),
          Container(height: 170, child: PreviewSlider()),
          SizedBox(height: 20),
          Text(AppLocalizations.of(context).discover,
              style: cons.textTheme.headline1
                  .copyWith(color: cons.COLOR_ORANGE_DARK)),
          SizedBox(height: 2),
          Container(
              height: 60,
              child: TopicBar(title: AppLocalizations.of(context).hotSpot)),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(CityScreen.ROUTE_NAME),
            child: Container(
              height: 170,
              child: HorizontalList(
                list: Provider.of<DataProviders>(context).getCitiesData(),
                height: 0.30,
                width: 0.30,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: 60,
              child: TopicBar(title: AppLocalizations.of(context).food)),
          SizedBox(height: 2),
          Container(
            height: 180,
            child: HorizontalList(
              list: Provider.of<DataProviders>(context).getFoodData(),
              height: 0.30,
              width: 0.45,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            child: TopicBar(title: AppLocalizations.of(context).culure),
          ),
          SizedBox(height: 2),
          Container(
            height: 180,
            child: HorizontalList(
              list: Provider.of<DataProviders>(context).getCultureData(),
              height: 0.35,
              width: 0.40,
            ),
          ),
        ],
      ),
    );
  }
}
