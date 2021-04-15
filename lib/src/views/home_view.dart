import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
    return Container(
      width: double.infinity,
      height: 300.0,
      padding: EdgeInsets.only(top:10.0),
      child: Swiper(          
          layout: SwiperLayout.STACK,
          itemWidth: 300.0,
          itemBuilder: (BuildContext context,int index){
            return new Image.network("https://via.placeholder.com/350x150",fit: BoxFit.fill,);
          },
          itemCount: 3,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
    );
  }
}