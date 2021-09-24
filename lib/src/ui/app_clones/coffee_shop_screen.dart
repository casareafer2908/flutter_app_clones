import 'package:flutter/material.dart';

class CoffeeShopScreen extends StatefulWidget {
  const CoffeeShopScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const CoffeeShopScreen();

  @override
  _CoffeeShopScreenState createState() => _CoffeeShopScreenState();
}

class _CoffeeShopScreenState extends State<CoffeeShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.brown,);
  }
}
