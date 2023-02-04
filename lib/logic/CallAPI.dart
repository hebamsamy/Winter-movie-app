import 'dart:convert';
import 'package:http/http.dart';
import 'package:online_shop/logic/movie.dart';

class CallAPI {
  Future<List<Movie>> getPupularMovies() async {
    List<Movie> list = [];
    //https://api.themoviedb.org/3/movie/popular?api_key=eb03df251074313f6e24c705f23a1cdc
    try {
      Uri link = Uri.https("api.themoviedb.org", "/3/movie/popular",
          {"api_key": "eb03df251074313f6e24c705f23a1cdc"});

      Response response = await get(link);

      var Data = jsonDecode(response.body);
      List returnedmovies = Data["results"] as List;
      list = returnedmovies
          .map((mov) => Movie(
              id: mov["id"],
              title: mov["title"],
              original_title: mov["original_title"],
              overview: mov["overview"],
              release_date: mov["release_date"],
              vote_average: mov["vote_average"],
              poster_path: mov["poster_path"],
              backdrop_path: mov["backdrop_path"]))
          .toList();
      return list;
    } catch (ex) {
      print(ex);
      return list;
    }
  }
}
