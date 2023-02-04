import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/Screens/movieDetailsScreen.dart';
import 'package:online_shop/logic/movie.dart';

class MovieItem extends StatelessWidget {
  Movie movie = Movie(
      id: 0,
      title: "title",
      original_title: "original_title",
      overview: "",
      release_date: "release_date",
      vote_average: 0,
      poster_path: "poster_path",
      backdrop_path: "backdrop_path");
  MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("/movie", arguments: this.movie);
        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MovieDetailsScreen()))
      },
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              "https://image.tmdb.org/t/p/w500/${this.movie.poster_path}"),
        ),
        ListTile(
          title: Text(this.movie.title),
          trailing: Text(this.movie.vote_average.toString()),
        )
      ]),
    );
  }
}
