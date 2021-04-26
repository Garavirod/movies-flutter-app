import 'dart:convert';

import 'package:movies/src/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MoviesProvider {
  String _apikey = "5e03d1d9956c4e7ba6d9a6761317df01";
  String _url = "api.themoviedb.org";
  String _language = "es-ES";
  String _verion_api = "3";

  Future<List<Movie>> onCinema() async {
    final url = Uri.https(
        this._url, 
        "$_verion_api/movie/now_playing",
        {
          'api_key' : this._apikey,
          'language': this._language,
        }
    );
    final response = await http.get(url);
    final decodedData = json.decode(response.body);
    final movies = new Movies.fromJsonList(decodedData['results']);  
    return movies.items;
  }

}