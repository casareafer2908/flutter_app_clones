import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_cards.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'app_clones_common_widgets/food_panda_card_texts.dart';

class FoodPandaScreen extends StatefulWidget {
  const FoodPandaScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const FoodPandaScreen();

  @override
  _FoodPandaScreenState createState() => _FoodPandaScreenState();
}

class _FoodPandaScreenState extends State<FoodPandaScreen> {
  //TODO: take this map out of here
  Map<int, Color> color = {
    50: Color.fromRGBO(215, 15, 100, .1),
    100: Color.fromRGBO(215, 15, 100, .2),
    200: Color.fromRGBO(215, 15, 100, .3),
    300: Color.fromRGBO(215, 15, 100, .4),
    400: Color.fromRGBO(215, 15, 100, .5),
    500: Color.fromRGBO(215, 15, 100, .6),
    600: Color.fromRGBO(215, 15, 100, .7),
    700: Color.fromRGBO(215, 15, 100, .8),
    800: Color.fromRGBO(215, 15, 100, .9),
    900: Color.fromRGBO(215, 15, 100, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor foodPandaColors = MaterialColor(0xffd70f64, color);
    return Theme(
      data: ThemeData(
        primarySwatch: foodPandaColors,
      ),
      child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: foodPandaColors),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            )),
            title: const Text(
              'Address Here',
              style: TextStyle(color: Color.fromRGBO(215, 15, 100, 1)),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
              )
            ],
          ),
          drawer: const Drawer(),
          body: _buildContents(context)),
    );
  }

  Widget _buildContents(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            // her you set how many colums will be in the screen
            staggeredTiles: _staggeredTiles,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            padding: const EdgeInsets.all(14),
            children: _tiles,
          ),
        ),
      ],
    );
  }

  SizedBox cardHorizontalSpaces() {
    return const SizedBox(
      height: 10,
    );
  }

  SizedBox cardVerticalSpaces() {
    return const SizedBox(
      width: 10,
    );
  }
}

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  //width -- height
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(2, 1),
];

const List<Widget> _tiles = <Widget>[
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
];

class _PandaScreenCards extends StatelessWidget {
  const _PandaScreenCards();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(),
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
    );
  }
}
