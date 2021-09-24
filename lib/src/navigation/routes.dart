import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/coffee_shop_screen.dart';
import 'package:flutter_app_clones/src/ui/app_clones/twitter_clone_screen.dart';
import 'package:flutter_app_clones/src/ui/flutter_samples/flutter_samples_list_screen.dart';
import 'package:flutter_app_clones/src/ui/flutter_samples/tabs_controller_screen.dart';
import 'package:flutter_app_clones/src/ui/main_menu_screen.dart';

class Routes {
  static const mainMenu = '/';
  static const flutterSamplesList = '/flutterSamplesList';
  static const twitterClone = '/twitterClone';
  static const tabController = '/tabController';
  static const coffeeShopClone = '/coffeeShopClone';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case mainMenu:
        return _buildRoute(MainMenu.create);
      case tabController:
        return _buildRoute(TabControllerExample.create);
      case flutterSamplesList:
        return _buildRoute(FlutterSamplesScreen.create);
      case coffeeShopClone:
        return _buildRoute(CoffeeShopScreen.create);
      case twitterClone:
        return _buildRoute(TwitterProfilePage.create);
      default:
        throw Exception('This screen doesn\'t exist');
    }
  }

  static MaterialPageRoute<T> _buildRoute<T>(Function buildFun) =>
      MaterialPageRoute<T>(builder: (context) => buildFun(context));
}
