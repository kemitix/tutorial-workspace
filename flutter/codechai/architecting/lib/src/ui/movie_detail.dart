import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final posterUrl;
  final description;
  final releaseDate;
  final String title;
  final String voteAverage;
  final int movieId;

  MovieDetail({
    required this.title,
    required this.posterUrl,
    required this.description,
    required this.releaseDate,
    required this.voteAverage,
    required this.movieId,
  });

  @override
  State<StatefulWidget> createState() {
    return MovieDetailState(
      title: title,
      posterUrl: posterUrl,
      description: description,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      movieId: movieId,
    );
  }
}

class MovieDetailState extends State<MovieDetail> {
  final posterUrl;
  final description;
  final releaseDate;
  final String title;
  final String voteAverage;
  final int movieId;

  MovieDetailState({
    required this.title,
    required this.posterUrl,
    required this.description,
    required this.releaseDate,
    required this.voteAverage,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      "https://image.tmdb.org/t/p/w500$posterUrl",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(margin: const EdgeInsets.only(top: 5.0)),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(margin: const EdgeInsets.only(top: 8.0, bottom: 8.0)),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                    ),
                    Text(
                      voteAverage,
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                    Text(
                      releaseDate,
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 8.0, bottom: 8.0)),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}