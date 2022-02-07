import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Movie {
  final String title;
  final double voteAverage;
  final int id;
  final int? budget;
  final int? revenue;

  Movie({
    required this.title,
    required this.voteAverage,
    required this.id,
    this.budget,
    this.revenue,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
