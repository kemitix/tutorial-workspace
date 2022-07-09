import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  static const _apiKey = '802b2c4b88ea1183e50e6b285a27696e';
  static const _baseUrl = "http://api.themoviedb.org/3/movie";
  final _popular_uri = Uri.parse("$_baseUrl/popular?api_key=$_apiKey");

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get(_popular_uri);
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    }
    throw Exception('Failed to load post');
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final uri = Uri.parse("$_baseUrl/$movieId/videos?api_key=$_apiKey");
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }}