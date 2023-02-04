import 'package:flutter/material.dart';
import 'package:online_shop/Widgets/movieItem.dart';
import 'package:online_shop/logic/CallAPI.dart';
import 'package:online_shop/logic/movie.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  CallAPI API = CallAPI();
  List<Movie> list = [];

  recive() async {
    List<Movie> recived = await API.getPupularMovies();
    setState(() {
      this.list = recived;
    });
  }

  @override
  void initState() {
    recive();
  }

  @override
  Widget build(BuildContext context) {
    if (this.list.length == 0) {
      return Center(
        child: Text("loading movie list...."),
      );
    } else {
      return GridView.builder(
          itemCount: this.list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1 / 2, crossAxisSpacing: 15),
          itemBuilder: (context, count) => MovieItem(movie: this.list[count]));
    }
  }
}
