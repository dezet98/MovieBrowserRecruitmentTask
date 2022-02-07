// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieListStateTearOff {
  const _$MovieListStateTearOff();

  MovieListInitial initial(String query) {
    return MovieListInitial(
      query,
    );
  }

  MovieListLoading loading(String query) {
    return MovieListLoading(
      query,
    );
  }

  MovieListFailure loadFailure(String query, AppException error) {
    return MovieListFailure(
      query,
      error,
    );
  }

  MovieListEmpty empty(String query) {
    return MovieListEmpty(
      query,
    );
  }

  MovieListSuccess loadSuccess(String query, List<Movie> movies) {
    return MovieListSuccess(
      query,
      movies,
    );
  }
}

/// @nodoc
const $MovieListState = _$MovieListStateTearOff();

/// @nodoc
mixin _$MovieListState {
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  final MovieListState _value;
  // ignore: unused_field
  final $Res Function(MovieListState) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $MovieListInitialCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory $MovieListInitialCopyWith(
          MovieListInitial value, $Res Function(MovieListInitial) then) =
      _$MovieListInitialCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class _$MovieListInitialCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListInitialCopyWith<$Res> {
  _$MovieListInitialCopyWithImpl(
      MovieListInitial _value, $Res Function(MovieListInitial) _then)
      : super(_value, (v) => _then(v as MovieListInitial));

  @override
  MovieListInitial get _value => super._value as MovieListInitial;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(MovieListInitial(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieListInitial implements MovieListInitial {
  const _$MovieListInitial(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MovieListState.initial(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListInitial &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $MovieListInitialCopyWith<MovieListInitial> get copyWith =>
      _$MovieListInitialCopyWithImpl<MovieListInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) {
    return initial(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieListInitial implements MovieListState {
  const factory MovieListInitial(String query) = _$MovieListInitial;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieListInitialCopyWith<MovieListInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListLoadingCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory $MovieListLoadingCopyWith(
          MovieListLoading value, $Res Function(MovieListLoading) then) =
      _$MovieListLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class _$MovieListLoadingCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListLoadingCopyWith<$Res> {
  _$MovieListLoadingCopyWithImpl(
      MovieListLoading _value, $Res Function(MovieListLoading) _then)
      : super(_value, (v) => _then(v as MovieListLoading));

  @override
  MovieListLoading get _value => super._value as MovieListLoading;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(MovieListLoading(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieListLoading implements MovieListLoading {
  const _$MovieListLoading(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MovieListState.loading(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListLoading &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $MovieListLoadingCopyWith<MovieListLoading> get copyWith =>
      _$MovieListLoadingCopyWithImpl<MovieListLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) {
    return loading(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieListLoading implements MovieListState {
  const factory MovieListLoading(String query) = _$MovieListLoading;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieListLoadingCopyWith<MovieListLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListFailureCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory $MovieListFailureCopyWith(
          MovieListFailure value, $Res Function(MovieListFailure) then) =
      _$MovieListFailureCopyWithImpl<$Res>;
  @override
  $Res call({String query, AppException error});
}

/// @nodoc
class _$MovieListFailureCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListFailureCopyWith<$Res> {
  _$MovieListFailureCopyWithImpl(
      MovieListFailure _value, $Res Function(MovieListFailure) _then)
      : super(_value, (v) => _then(v as MovieListFailure));

  @override
  MovieListFailure get _value => super._value as MovieListFailure;

  @override
  $Res call({
    Object? query = freezed,
    Object? error = freezed,
  }) {
    return _then(MovieListFailure(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$MovieListFailure implements MovieListFailure {
  const _$MovieListFailure(this.query, this.error);

  @override
  final String query;
  @override
  final AppException error;

  @override
  String toString() {
    return 'MovieListState.loadFailure(query: $query, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListFailure &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $MovieListFailureCopyWith<MovieListFailure> get copyWith =>
      _$MovieListFailureCopyWithImpl<MovieListFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) {
    return loadFailure(query, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(query, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class MovieListFailure implements MovieListState {
  const factory MovieListFailure(String query, AppException error) =
      _$MovieListFailure;

  @override
  String get query => throw _privateConstructorUsedError;
  AppException get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieListFailureCopyWith<MovieListFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListEmptyCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory $MovieListEmptyCopyWith(
          MovieListEmpty value, $Res Function(MovieListEmpty) then) =
      _$MovieListEmptyCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class _$MovieListEmptyCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListEmptyCopyWith<$Res> {
  _$MovieListEmptyCopyWithImpl(
      MovieListEmpty _value, $Res Function(MovieListEmpty) _then)
      : super(_value, (v) => _then(v as MovieListEmpty));

  @override
  MovieListEmpty get _value => super._value as MovieListEmpty;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(MovieListEmpty(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieListEmpty implements MovieListEmpty {
  const _$MovieListEmpty(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MovieListState.empty(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListEmpty &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $MovieListEmptyCopyWith<MovieListEmpty> get copyWith =>
      _$MovieListEmptyCopyWithImpl<MovieListEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) {
    return empty(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class MovieListEmpty implements MovieListState {
  const factory MovieListEmpty(String query) = _$MovieListEmpty;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieListEmptyCopyWith<MovieListEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListSuccessCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory $MovieListSuccessCopyWith(
          MovieListSuccess value, $Res Function(MovieListSuccess) then) =
      _$MovieListSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String query, List<Movie> movies});
}

/// @nodoc
class _$MovieListSuccessCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListSuccessCopyWith<$Res> {
  _$MovieListSuccessCopyWithImpl(
      MovieListSuccess _value, $Res Function(MovieListSuccess) _then)
      : super(_value, (v) => _then(v as MovieListSuccess));

  @override
  MovieListSuccess get _value => super._value as MovieListSuccess;

  @override
  $Res call({
    Object? query = freezed,
    Object? movies = freezed,
  }) {
    return _then(MovieListSuccess(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MovieListSuccess implements MovieListSuccess {
  const _$MovieListSuccess(this.query, this.movies);

  @override
  final String query;
  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MovieListState.loadSuccess(query: $query, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListSuccess &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $MovieListSuccessCopyWith<MovieListSuccess> get copyWith =>
      _$MovieListSuccessCopyWithImpl<MovieListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, AppException error) loadFailure,
    required TResult Function(String query) empty,
    required TResult Function(String query, List<Movie> movies) loadSuccess,
  }) {
    return loadSuccess(query, movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, AppException error)? loadFailure,
    TResult Function(String query)? empty,
    TResult Function(String query, List<Movie> movies)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(query, movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListFailure value) loadFailure,
    required TResult Function(MovieListEmpty value) empty,
    required TResult Function(MovieListSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListFailure value)? loadFailure,
    TResult Function(MovieListEmpty value)? empty,
    TResult Function(MovieListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class MovieListSuccess implements MovieListState {
  const factory MovieListSuccess(String query, List<Movie> movies) =
      _$MovieListSuccess;

  @override
  String get query => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieListSuccessCopyWith<MovieListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
