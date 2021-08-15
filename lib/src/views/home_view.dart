import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movies in cinema'),
          elevation: 1,
          //backgroundColor: Colors.green[300],
          actions: [
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: () {}
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              this._swiperCaards(),
              // Slider Movies
              MovieSlider()
            ],
          ),
        )
    );
  }

  /* Methods */
  Widget _swiperCaards () {
    final MoviesProvider mp = MoviesProvider();
    mp.onCinema();
    return CardSwiper(moviesList: [1,2,3,4,5]);
  }
}