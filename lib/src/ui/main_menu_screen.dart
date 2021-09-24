import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/localization/locale_keys.g.dart';
import 'package:flutter_app_clones/src/navigation/routes.dart';
import 'package:flutter_app_clones/src/ui/app_clones/twitter_clone_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const MainMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.appBarTitle).tr(),
      ),
      body: _buildContent(context),
    );
  }

  _buildContent(BuildContext context) {
    onButtonTap(Widget page) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => page),


      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            key: const ValueKey('flutterSamples'),
            onPressed: () {},
            child: const Text(LocaleKeys.flutterSamples).tr(),
          ),
          ElevatedButton(
            key: const ValueKey('twitterClone'),
            onPressed: () => onButtonTap(const TwitterProfilePage()),
            child: const Text('Twitter Clone'),
          ),
          ElevatedButton(
            key: const ValueKey('coffeeShop'),
            onPressed: () {},
            child: const Text(LocaleKeys.coffeeShop).tr(),
          ),
        ],
      ),
    );
  }
}
