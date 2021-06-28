import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featurred_plants.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeadWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
