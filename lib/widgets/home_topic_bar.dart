import 'package:flutter/material.dart';

import '../utils/constants.dart' as cons;

class TopicBar extends StatelessWidget {
  final String title;
  final Function handler;

  const TopicBar({Key key, this.title, this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: cons.textTheme.headline3,
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: handler,
          ),
        ],
      ),
    );
  }
}
