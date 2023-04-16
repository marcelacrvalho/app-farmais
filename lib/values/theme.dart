import 'package:flutter/material.dart';

import 'routes.dart';
import 'strings.dart';

final myTheme = MaterialApp(
  debugShowCheckedModeBanner: false,
  title: title,
  theme: ThemeData(
    primaryColor: Colors.red,
  ),
  initialRoute: '/',
  routes: myRoute,
);
