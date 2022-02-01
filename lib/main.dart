import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import './utils/constants.dart' as cons;
import './screens/home_screen.dart';
import './providers/data_provider.dart';
import './providers/locale_provider.dart';

import './screens/city_screen.dart';
import './screens/options_screen.dart';
import './screens/webview_screen.dart';

//SudaTrip

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleProvider localeProvider = LocaleProvider();
  await localeProvider.fetchLoacle();
  runApp(MyApp(
    localeProvider: localeProvider,
  ));
}

class MyApp extends StatelessWidget {
  final LocaleProvider localeProvider;
  MyApp({this.localeProvider});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => DataProviders(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => localeProvider,
        ),
      ],
      child: Consumer<LocaleProvider>(
        builder: (context, model, child) {
          return MaterialApp(
            locale: model.value,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en', ''), // English,
              const Locale('ar', ''), // arabic,
            ],

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
              WebviewScreen.ROUTE_NAME: (ctx) => WebviewScreen(),
            },
          );
        },
      ),
    );
  }
}
