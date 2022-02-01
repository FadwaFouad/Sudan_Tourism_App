import 'package:flutter/material.dart';

import '../utils/constants.dart' as cons;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            //cons.STRING_WELCOME,
            AppLocalizations.of(context).helloWorld,
            style: cons.textTheme.headline1.copyWith(
              letterSpacing: 2,
            ),
          ),
          // InkWell(
          //   onTap: () {},
          //   // child: CircleAvatar(
          //   //   backgroundImage: AssetImage(
          //   //     cons.IMAGE_PROFILE,
          //   //   ),
          //   // ),
          // ),
        ],
      ),
    );
  }
}
