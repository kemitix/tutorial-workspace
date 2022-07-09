// To parse this JSON data, do
//
//     final trailerModel = trailerModelFromJson(jsonString);

import 'dart:convert';

class TrailerModel {
  TrailerModel({
    required this.id,
    required this.results,
  });

  final int id;
  final List<Result> results;

  factory TrailerModel.fromRawJson(String str) => TrailerModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TrailerModel.fromJson(Map<String, dynamic> json) => TrailerModel(
    id: json["id"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.id,
    required this.iso6391,
    required this.iso31661,
    required this.key,
    required this.name,
    required this.site,
    required this.size,
    required this.type,
  });

  final String id;
  final String iso6391;
  final String iso31661;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    iso6391: json["iso_639_1"],
    iso31661: json["iso_3166_1"],
    key: json["key"],
    name: json["name"],
    site: json["site"],
    size: json["size"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "iso_639_1": iso6391,
    "iso_3166_1": iso31661,
    "key": key,
    "name": name,
    "site": site,
    "size": size,
    "type": type,
  };
}