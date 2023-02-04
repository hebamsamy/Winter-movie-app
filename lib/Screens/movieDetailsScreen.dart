import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/logic/movie.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  String CurrentTitle = "";
  // void initState() {

  // }

  Widget build(BuildContext context) {
    var movie = ModalRoute.of(context)?.settings.arguments as Movie;
    setState(() {
      this.CurrentTitle = movie.title;
    });
    return Scaffold(
      appBar: AppBar(title: Text(this.CurrentTitle)),
    );
  }
}
