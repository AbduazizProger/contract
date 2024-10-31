import 'package:flutter/material.dart';
import 'package:contract/views/home_page.dart';
import 'package:contract/views/auth/login_page.dart';

class Routes {
  static const String home = '/home';
  static const String auth = '/auth';

  static final routes = <String, WidgetBuilder>{
    home: (context) => const HomePage(),
    auth: (context) => const LoginPage(),
  };
}
