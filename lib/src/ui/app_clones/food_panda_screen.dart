import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FoodPandaScreen extends StatefulWidget {
  const FoodPandaScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const FoodPandaScreen();

  @override
  _FoodPandaScreenState createState() => _FoodPandaScreenState();
}

class _FoodPandaScreenState extends State<FoodPandaScreen> {
  //TODO: take this map out of here
  Map<int, Color> color = {
    50: Color.fromRGBO(255, 0, 127, .1),
    100: Color.fromRGBO(255, 0, 127, .2),
    200: Color.fromRGBO(255, 0, 127, .3),
    300: Color.fromRGBO(255, 0, 127, .4),
    400: Color.fromRGBO(255, 0, 127, .5),
    500: Color.fromRGBO(255, 0, 127, .6),
    600: Color.fromRGBO(255, 0, 127, .7),
    700: Color.fromRGBO(255, 0, 127, .8),
    800: Color.fromRGBO(255, 0, 127, .9),
    900: Color.fromRGBO(255, 0, 127, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor foodPandaColors = MaterialColor(0xffff007f, color);
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
              style: TextStyle(color: Color.fromRGBO(255, 0, 127, 1)),
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
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _staggeredTiles,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(4),
        children: _tiles,
      ),
    );
  }
}

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  //width -- height
  StaggeredTile.count(4, .5),
  StaggeredTile.count(4, 1),
  StaggeredTile.count(2, 2.5),
  StaggeredTile.count(2, 1.7),
  StaggeredTile.count(2, .8),
  StaggeredTile.count(4, 1),
  //here wtf
  StaggeredTile.count(4, 1.7),

  StaggeredTile.count(4, 1),
];

const List<Widget> _tiles = <Widget>[
  _Example01Tile(Colors.green, Icons.widgets),
  _Example01Tile(Colors.lightBlue, Icons.wifi),
  _Example01Tile(Colors.amber, Icons.panorama_wide_angle),
  _Example01Tile(Colors.brown, Icons.map),
  _Example01Tile(Colors.deepOrange, Icons.send),
  _Example01Tile(Colors.indigo, Icons.airline_seat_flat),
  _Example01Tile(Colors.red, Icons.bluetooth),
  _Example01Tile(Colors.pink, Icons.battery_alert),
];


class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
