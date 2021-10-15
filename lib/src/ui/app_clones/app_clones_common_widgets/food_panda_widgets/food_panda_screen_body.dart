import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_card_texts.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_cards.dart';
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
  StaggeredTile.count(2, 1),
  StaggeredTile.count(4, 1.2),
  StaggeredTile.count(4, 2.2),
];

const List<Widget> _tiles = <Widget>[
  _FoodDeliveryCard(),
  _ShopsCard(),
  _PandaMartCard(),
  _PickUpCard(),
  _BecomeAPro(),
  _YourDailyDeals(),
];

const List<Widget> _deals = <Widget>[
  _FoodDeliveryCard(),
  _ShopsCard(),
  _PandaMartCard(),
  _PickUpCard(),
  _BecomeAPro(),
];

class _YourDailyDeals extends StatelessWidget {
  const _YourDailyDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              'Your daily deals',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          SizedBox(
            height: 140,
            child: ListView(
              padding: const EdgeInsets.all(4),
              scrollDirection: Axis.horizontal,
              children: _deals,
            ),
          ),
        ],
      ),
    );
  }
}

class _BecomeAPro extends StatelessWidget {
  const _BecomeAPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Become a pro',
        cardBodyText: 'and get exclusive deals',
      ),
      backgroundColor: Colors.white,
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
      backgroundImage: Image.asset('assets/images/characters/frieza.png'),
    );
  }
}

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
      backgroundImage: Image.asset('assets/images/characters/goku.png'),
    );
  }
}

class _PickUpCard extends StatelessWidget {
  const _PickUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Pick-Up',
        cardBodyText: 'Get up to 21% off',
      ),
      backgroundColor: Colors.blueAccent,
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
      backgroundImage: Image.asset('assets/images/characters/vegeta.png'),
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
      backgroundImage: Image.asset('assets/images/characters/broly.png'),
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
        textColor: Colors.white,
      ),
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
      backgroundImage: Image.asset('assets/images/characters/boo.png'),
    );
  }
}
