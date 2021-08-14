import 'package:flutter/material.dart';
import 'package:movies/src/views/details_view.dart';
import 'package:movies/src/views/home_view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      initialRoute: '/',
      routes: {
        '/': ( BuildContext context ) => HomeView(),
        'details': ( BuildContext context ) => DetailsView(),
      },
    );
  }
}