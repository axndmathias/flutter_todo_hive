import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/app_widget.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  // opne the box
  var box = await Hive.openBox('myBox');

  runApp(const AppWidget());
}
