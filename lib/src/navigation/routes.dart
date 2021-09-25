import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/coffee_shop_screen.dart';
import 'package:flutter_app_clones/src/ui/app_clones/food_panda_screen.dart';
import 'package:flutter_app_clones/src/ui/app_clones/twitter_clone_screen.dart';
import 'package:flutter_app_clones/src/ui/flutter_samples/drawer_screen.dart';
import 'package:flutter_app_clones/src/ui/flutter_samples/flutter_samples_list_screen.dart';
import 'package:flutter_app_clones/src/ui/flutter_samples/tabs_controller_screen.dart';
import 'package:flutter_app_clones/src/ui/main_menu_screen.dart';

class Routes {
  static const mainMenu = '/';

  //samples
  static const flutterSamplesList = '/flutterSamplesList';
  static const tabController = '/tabController';
  static const drawerExample = '/drawerExample';

  //clones
  static const twitterClone = '/twitterClone';
  static const coffeeShopClone = '/coffeeShopClone';
  static const foodPandaClone = '/foodPandaClone';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case mainMenu:
        return _buildRoute(MainMenu.create);
      //samples
      case tabController:
        return _buildRoute(TabControllerExample.create);
      case flutterSamplesList:
        return _buildRoute(FlutterSamplesScreen.create);
      case drawerExample:
        return _buildRoute(DrawerScreen.create);
      //clones
      case coffeeShopClone:
        return _buildRoute(CoffeeShopScreen.create);
      case twitterClone:
        return _buildRoute(TwitterProfileScreen.create);
      case foodPandaClone:
        return _buildRoute(FoodPandaScreen.create);
      default:
        throw Exception('This screen doesn\'t exist');
    }
  }

  static MaterialPageRoute<T> _buildRoute<T>(Function buildFun) =>
      MaterialPageRoute<T>(builder: (context) => buildFun(context));
}
