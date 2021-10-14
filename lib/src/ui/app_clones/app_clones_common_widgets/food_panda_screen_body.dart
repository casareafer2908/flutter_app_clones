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
  StaggeredTile.count(4, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

const List<Widget> _tiles = <Widget>[
  _FoodDeliveryCard(),
  _ShopsCard(),
  _PandaMartCard(),
  _FoodDeliveryCard(),
  _FoodDeliveryCard(),
  _FoodDeliveryCard(),
  _FoodDeliveryCard(),
  _FoodDeliveryCard(),
];

class _ShopsCard extends StatelessWidget {
  const _ShopsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Shops',
        cardBodyText: 'Groceries and More',
      ),
      backgroundColor: Colors.orangeAccent,
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
    );
  }
}

class _PandaMartCard extends StatelessWidget {
  const _PandaMartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'PandaMart',
        cardBodyText: 'Essentials Delivered Fast',
      ),
      backgroundColor: Colors.purpleAccent,
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
    );
  }
}

class _FoodDeliveryCard extends StatelessWidget {
  const _FoodDeliveryCard({Key? key}) : super(key: key);

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
