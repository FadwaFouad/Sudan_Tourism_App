import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './utils/constants.dart' as cons;
import './screens/home_screen.dart';
import './providers/data_provider.dart';
import './screens/city_screen.dart';
import './screens/options_screen.dart';

//SudaTrip

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => DataProviders(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: cons.COLOR_ORANGE,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home page
        // home: CityScreen(),
        routes: {
          '/': (ctx) => HomeScreen(),
          CityScreen.ROUTE_NAME: (ctx) => CityScreen(),
          OptionsScreen.ROUTE_NAME: (ctx) => OptionsScreen(),
        },
      ),
    );
  }
}
