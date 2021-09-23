import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/main_menu_screen.dart';

class Routes {
  static const mainMenu = '/';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case mainMenu:
        return _buildRoute(MainMenu.create);
      default:
        throw Exception('This screen doesn\'t exist');
    }
  }

  static MaterialPageRoute<T> _buildRoute<T>(Function buildFun) =>
      MaterialPageRoute<T>(builder: (context) => buildFun(context));
}
