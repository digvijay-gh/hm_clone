import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/screens/homescreen/homescreen.dart';
import 'package:hm_by_digvijay/screens/catalogscreen/catalog_screen.dart';
import 'package:hm_by_digvijay/screens/sectionscreen/section_screen.dart';
import 'package:hm_by_digvijay/screens/productscreen/product_screen.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case CatalogScreen.routeName:
        return MaterialPageRoute(builder: (context) => CatalogScreen());
      case ProductScreen.routeName:
        return MaterialPageRoute(builder: (context) => ProductScreen());
      case SectionScreen.routeName:
        return MaterialPageRoute(builder: (context) => SectionScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("something went wrong"),
            ),
          ),
        );
    }
  }
}
