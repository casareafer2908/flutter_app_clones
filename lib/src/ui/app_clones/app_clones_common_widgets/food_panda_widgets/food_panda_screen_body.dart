import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_card_texts.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_cards.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_search_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BuildFoodPandaBody extends StatefulWidget {
  const BuildFoodPandaBody(BuildContext context, {Key? key}) : super(key: key);

  @override
  _BuildFoodPandaBodyState createState() => _BuildFoodPandaBodyState();
}

class _BuildFoodPandaBodyState extends State<BuildFoodPandaBody> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      primary: true,
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 4,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
    );
  }
}

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(4, .7),
  StaggeredTile.count(4, 1.5),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(4, 1.4),
  StaggeredTile.count(4, 2.3),
  StaggeredTile.count(4, .93),
];

const List<Widget> _tiles = <Widget>[
  Padding(
      padding: EdgeInsets.fromLTRB(6, 3, 6, 3), child: _SearchRestaurants()),
  Padding(padding: EdgeInsets.fromLTRB(6, 3, 6, 3), child: _FoodDeliveryCard()),
  Padding(padding: EdgeInsets.fromLTRB(6, 3, 6, 3), child: _ShopsCard()),
  Padding(padding: EdgeInsets.fromLTRB(6, 3, 6, 3), child: _PandaMartCard()),
  Padding(padding: EdgeInsets.fromLTRB(6, 3, 6, 3), child: _PickUpCard()),
  Padding(padding: EdgeInsets.fromLTRB(6, 3, 6, 20), child: _BecomeAPro()),
  _YourDailyDeals(),
  Padding(padding: EdgeInsets.fromLTRB(6, 0, 6, 3), child: _ReferAFriendCard()),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 4),
          child: Text(
            'Your daily deals',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 190,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(4),
            scrollDirection: Axis.horizontal,
            children: _deals,
          ),
        ),
      ],
    );
  }
}

class _SearchRestaurants extends StatelessWidget {
  const _SearchRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FoodPandaSearchBar();
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

class _ReferAFriendCard extends StatelessWidget {
  const _ReferAFriendCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardText: const CardTextBoxes(
        cardHeaderText: 'Refer a Friend',
        cardBodyText: 'and both get a discount',
      ),
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
      backgroundImage: Image.asset('assets/images/characters/goku.png'),
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
      backgroundColor: const Color.fromRGBO(241, 201, 116, 1),
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
      backgroundColor: const Color.fromRGBO(133, 184, 240, 1),
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
      backgroundColor: const Color.fromRGBO(226, 155, 186, 1),
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
        cardHeaderText: 'Food delivery',
        cardBodyText: 'Order food you love',
        textColor: Colors.white,
      ),
      cardWidth: 150,
      cardHeight: 150,
      onTap: () {},
      backgroundImage: Image.asset('assets/images/characters/boo.png'),
    );
  }
}
