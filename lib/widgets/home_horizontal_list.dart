import 'package:flutter/material.dart';

import '../utils/constants.dart' as cons;
import '../models/item.dart';

class HorizontalList extends StatelessWidget {
  final List<Item> list;
  final width;
  final height;
  const HorizontalList({Key key, this.list, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => ListItem(
        item: list[index],
        heightRatio: height,
        widthRatio: width,
      ),
      itemCount: list.length,
    );
  }
}

class ListItem extends StatelessWidget {
  final Item item;

  final widthRatio;
  final heightRatio;

  const ListItem({Key key, this.item, this.widthRatio, this.heightRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * widthRatio,
      height: size.height * heightRatio,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  //same as parent
                  width: double.infinity,
                  height: double.infinity,

                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                    ),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 1,
                  right: 1,
                  child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: item.isFav ? cons.COLOR_Red : cons.COLOR_BLACK,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          // name

          Card(
            margin: EdgeInsets.all(0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: Container(
                //same as parent
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  // color: cons.COLOR_GREY.withOpacity(0.5)
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  item.name,
                  style: cons.textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
    );
  }
}
