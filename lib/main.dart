import 'package:flutter/material.dart';
import 'package:namedroutes/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',

      onGenerateRoute: RouteGenerator.routeGenerator,

    
    );
  }
}
