import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'core/main_app.dart';

import 'main.config.dart';

@InjectableInit()
void _configureDependencies() => GetIt.I.init();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _configureDependencies();
  runApp(const MainApp());
}
