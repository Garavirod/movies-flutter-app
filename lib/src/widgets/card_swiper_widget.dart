import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

 
class CardSwiper extends StatelessWidget {
  final List<dynamic> moviesList;

  CardSwiper({ @required this.moviesList});

  @override
  Widget build(BuildContext context) {
    // Determine cards hight and widht based on screen size's device
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.5,
      padding: EdgeInsets.only(top:10.0),
      child: Swiper(          
          layout: SwiperLayout.STACK,          
          itemWidth: _screenSize.width*0.6,
          itemHeight: _screenSize.height*0.9,
          itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: ()=> Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'), 
                  image: NetworkImage('https://via.placeholder.com/350x150'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          itemCount: 3,
         /*  pagination: new SwiperPagination(),
          control: new SwiperControl(), */
        ),
    );
      
  }
}