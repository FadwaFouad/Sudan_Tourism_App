import 'package:flutter/material.dart';

import 'package:sudan_tour_app/utils/constants.dart' as cons;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../models/city.dart';
import '../widgets/option_list.dart';

class OptionsScreen extends StatefulWidget {
  static const ROUTE_NAME = '/options_screen';

  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    List<TravelOption> optionsList =
        Provider.of<DataProviders>(context, listen: false)
            .getCityTravelOption();

    TabController _controller;

    final hotels =
        Provider.of<DataProviders>(context, listen: false).getHotelsList();

    final res = Provider.of<DataProviders>(context, listen: false).getResList();

    final places =
        Provider.of<DataProviders>(context, listen: false).getPlacesList();

    final lang = Localizations.localeOf(context).languageCode;

    return DefaultTabController(
      length: optionsList.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: cons.COLOR_WHITE,
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline_rounded),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            //title
            Text(
              AppLocalizations.of(context).khartoum,
              style: cons.textTheme.headline1.copyWith(
                letterSpacing: 3,
              ),
            ),
            SizedBox(height: 5),
            //search bar

            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: cons.COLOR_GREY.withOpacity(0.2),
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Icon(
                    Icons.search,
                    color: cons.COLOR_GREY,
                  ),
                  SizedBox(width: 5),
                  Text(
                    AppLocalizations.of(context).search,
                    style: cons.textTheme.bodyText1.copyWith(
                      color: cons.COLOR_GREY,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),

            //tab
            TabBar(
              controller: _controller,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.deepOrange,
              isScrollable: true,
              labelPadding: EdgeInsets.all(10),
              indicatorPadding: EdgeInsets.all(10),
              tabs: optionsList
                  .map(
                    (option) => Container(
                      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                      child: Tab(
                        child: FittedBox(
                          child: Row(
                            children: [
                              Icon(option.icon, color: cons.COLOR_ORANGE_DARK),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                option.name[lang],
                                style: cons.textTheme.headline3.copyWith(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 15),
            //tab view
            Expanded(
              child: TabBarView(children: [
                OptionList(
                  list: hotels,
                ),
                OptionList(
                  list: res,
                ),
                OptionList(
                  list: places,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
