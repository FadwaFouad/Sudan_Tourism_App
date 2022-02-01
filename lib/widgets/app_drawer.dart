import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../utils/constants.dart' as cons;
import '../providers/locale_provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _isExpand = false;

  Widget buildDrawerItem({
    BuildContext context,
    Widget icon,
    String title,
    Widget tail,
    Function selectHandler,
    bool isSubItem = false,
  }) {
    return Container(
      width: double.infinity,
      height: isSubItem ? 50 : 70,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: isSubItem ? 40 : 5),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style:
              isSubItem ? cons.textTheme.headline4 : cons.textTheme.headline3,
        ),
        trailing: tail,
        onTap: selectHandler,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = Provider.of<LocaleProvider>(context);
    final currentLocale = Localizations.localeOf(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20),
            child: Text(
              AppLocalizations.of(context).journey,
              style: cons.textTheme.headline1,
            ),
            color: cons.COLOR_ORANGE_DARK.withOpacity(0.7),
          ),
          buildDrawerItem(
              context: context,
              title: AppLocalizations.of(context).setting,
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              selectHandler: () {}),
          Divider(),
          buildDrawerItem(
            context: context,
            title: AppLocalizations.of(context).lang,
            icon: Icon(
              Icons.language_outlined,
              size: 30,
            ),
            tail: IconButton(
              icon:
                  _isExpand ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              onPressed: () => setState(() {
                _isExpand = !_isExpand;
              }),
            ),
            selectHandler: () {},
          ),
          if (_isExpand)
            buildDrawerItem(
              context: context,
              title: 'English',
              icon: Icon(Icons.emoji_flags_rounded),
              selectHandler: () {
                if (currentLocale.languageCode != 'en') {
                  Navigator.of(context).pop();
                  locale.setLocale('en');
                }
              },
              isSubItem: true,
            ),
          if (_isExpand)
            buildDrawerItem(
              context: context,
              title: 'العربية',
              icon: Icon(Icons.emoji_flags_rounded),
              selectHandler: () {
                if (currentLocale != Locale('ar')) {
                  locale.setLocale('ar');
                  Navigator.of(context).pop();
                }
              },
              isSubItem: true,
            ),
        ],
      ),
    );
  }
}
