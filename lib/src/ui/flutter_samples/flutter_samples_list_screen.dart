import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/navigation/routes.dart';

class FlutterSamplesScreen extends StatelessWidget {
  const FlutterSamplesScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const FlutterSamplesScreen();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Samples'),
        ),
        body: _buildContent(context),
      ),
    );
  }

  _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            key: const ValueKey('tabsControllerScreen'),
            child: const Text('Tabs'),
            onPressed: () => Navigator.pushNamed(context, Routes.tabController),
          ),
          ElevatedButton(
            key: const ValueKey('drawerExampleScreen'),
            child: const Text('Drawer Example'),
            onPressed: () => Navigator.pushNamed(context, Routes.drawerExample),
          )
        ],
      ),
    );
  }
}
