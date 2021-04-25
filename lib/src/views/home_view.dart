import 'package:flutter/material.dart';
import 'package:movies/src/widgets/card_swiper_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movies in cinema'),
          backgroundColor: Colors.green[300],
          actions: [
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: () {}
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              this._swiperCaards()
            ],
          ),
        )
    );
  }

  /* Methods */
  Widget _swiperCaards () {
    return CardSwiper(moviesList: [1,2,3,4,5]);
  }
}