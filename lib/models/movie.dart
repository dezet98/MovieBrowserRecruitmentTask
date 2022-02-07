import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Movie extends Equatable {
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

  int get profit => (revenue ?? 0) - (budget ?? 0);

  bool shouldWatch() {
    if (DateTime.now().weekday == DateTime.sunday && profit > 1000000) {
      return true;
    }

    return false;
  }

  @override
  List<Object?> get props => [title, voteAverage, id, budget, revenue];
}
