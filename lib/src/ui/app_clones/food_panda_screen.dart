import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_screen_body.dart';

class FoodPandaScreen extends StatefulWidget {
  const FoodPandaScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const FoodPandaScreen();

  @override
  _FoodPandaScreenState createState() => _FoodPandaScreenState();
}

class _FoodPandaScreenState extends State<FoodPandaScreen> {
  final Color pandaColor = const Color.fromRGBO(215, 15, 100, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: pandaColor),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('26 Lane 103, Xin\'nan Street',
                style: TextStyle(
                    color: pandaColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            const Text('Taipei City, 110',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400)),
          ],
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
      body: BuildFoodPandaBody(context),
    );
  }
}
