import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:namedroutes/main_page.dart';

import 'green_page.dart';
import 'read_page.dart';
import 'yellow_page.dart';

class RouteGenerator {
  static Route _subRoute(Widget route) {
    return defaultTargetPlatform == TargetPlatform.android
        ? MaterialPageRoute(builder: (context) => route)
        : CupertinoPageRoute(builder: (context) => route);
  }

  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _subRoute(const MainPage());
       
    
      case "/red_page":
       
       return _subRoute(const RedPage());

       case "/yellow_page":
       
       return _subRoute(const YellowPage());
       
         case "/green_page":
       
       return _subRoute(const GreenPage());
      default:
        return  MaterialPageRoute(builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("Error")
          )
          )
          );
    }
  }
}
