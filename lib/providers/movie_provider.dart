import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie.dart';

class MovieProvider extends ChangeNotifier {

  getMovies(int type) async {
    var url;
    if (type == 0) {
      url = Uri.parse('https://api.jikan.moe/v3/top/anime/1/airing');
    } else {
      url = Uri.parse('https://api.jikan.moe/v3/top/anime/1/upcoming');
    }
    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['top'];
      List<Movie> movies = data.map((item) => Movie.fromJson(item)).toList();
      return movies;
    } else {
      return [];
    }
  }
}