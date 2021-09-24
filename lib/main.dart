import 'package:easy_localization/easy_localization.dart';
import 'src/localization/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/app.dart';
import 'package:flutter_app_clones/src/localization/supported_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: supportedLocales.keys.toList(),
      assetLoader: const CodegenLoader(),
      path: 'assets/translations',
      child: const MyApp()));
}
