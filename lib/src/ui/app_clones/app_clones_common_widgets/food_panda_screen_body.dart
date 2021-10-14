import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_card_texts.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_cards.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BuildFoodPandaBody extends StatefulWidget {
  const BuildFoodPandaBody(BuildContext context, {Key? key}) : super(key: key);

  @override
  _BuildFoodPandaBodyState createState() => _BuildFoodPandaBodyState();
}

class _BuildFoodPandaBodyState extends State<BuildFoodPandaBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: StaggeredGridView.count(
            // her you set how many colums will be in the screen
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            padding: const EdgeInsets.all(14),
            children: _tiles,
          ),
        ),
      ],
    );
  }
}

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  //width -- height
  StaggeredTile.count(4, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

const List<Widget> _tiles = <Widget>[
  _PandaScreenFinder(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
  _PandaScreenCards(),
];

class _PandaScreenFinder extends StatelessWidget {
  const _PandaScreenFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Food',
        cardBodyText: 'Order',
      ),
      backgroundColor: Colors.white,
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
    );
  }
}

class _PandaScreenCards extends StatelessWidget {
  const _PandaScreenCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Food',
        cardBodyText: 'Order',
      ),
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
    );
  }
}
