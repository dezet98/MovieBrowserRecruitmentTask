// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailsStateTearOff {
  const _$MovieDetailsStateTearOff();

  MovieDetailsInitial initial(Movie movie) {
    return MovieDetailsInitial(
      movie,
    );
  }

  MovieDetailsLoading loading(Movie movie) {
    return MovieDetailsLoading(
      movie,
    );
  }

  MovieDetailsFailure loadFailure(Movie movie, AppException error) {
    return MovieDetailsFailure(
      movie,
      error,
    );
  }

  MovieDetailsSuccess loadSuccess(Movie movie) {
    return MovieDetailsSuccess(
      movie,
    );
  }
}

/// @nodoc
const $MovieDetailsState = _$MovieDetailsStateTearOff();

/// @nodoc
mixin _$MovieDetailsState {
  Movie get movie => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) initial,
    required TResult Function(Movie movie) loading,
    required TResult Function(Movie movie, AppException error) loadFailure,
    required TResult Function(Movie movie) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? initial,
    TResult Function(Movie movie)? loading,
    TResult Function(Movie movie, AppException error)? loadFailure,
    TResult Function(Movie movie)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsFailure value) loadFailure,
    required TResult Function(MovieDetailsSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsFailure value)? loadFailure,
    TResult Function(MovieDetailsSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc
abstract class $MovieDetailsInitialCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsInitialCopyWith(
          MovieDetailsInitial value, $Res Function(MovieDetailsInitial) then) =
      _$MovieDetailsInitialCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});
}

/// @nodoc
class _$MovieDetailsInitialCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsInitialCopyWith<$Res> {
  _$MovieDetailsInitialCopyWithImpl(
      MovieDetailsInitial _value, $Res Function(MovieDetailsInitial) _then)
      : super(_value, (v) => _then(v as MovieDetailsInitial));

  @override
  MovieDetailsInitial get _value => super._value as MovieDetailsInitial;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieDetailsInitial(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$MovieDetailsInitial implements MovieDetailsInitial {
  const _$MovieDetailsInitial(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailsState.initial(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieDetailsInitial &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  $MovieDetailsInitialCopyWith<MovieDetailsInitial> get copyWith =>
      _$MovieDetailsInitialCopyWithImpl<MovieDetailsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) initial,
    required TResult Function(Movie movie) loading,
    required TResult Function(Movie movie, AppException error) loadFailure,
    required TResult Function(Movie movie) loadSuccess,
  }) {
    return initial(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? initial,
    TResult Function(Movie movie)? loading,
    TResult Function(Movie movie, AppException error)? loadFailure,
    TResult Function(Movie movie)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsFailure value) loadFailure,
    required TResult Function(MovieDetailsSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsFailure value)? loadFailure,
    TResult Function(MovieDetailsSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsInitial implements MovieDetailsState {
  const factory MovieDetailsInitial(Movie movie) = _$MovieDetailsInitial;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieDetailsInitialCopyWith<MovieDetailsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsLoadingCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsLoadingCopyWith(
          MovieDetailsLoading value, $Res Function(MovieDetailsLoading) then) =
      _$MovieDetailsLoadingCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});
}

/// @nodoc
class _$MovieDetailsLoadingCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsLoadingCopyWith<$Res> {
  _$MovieDetailsLoadingCopyWithImpl(
      MovieDetailsLoading _value, $Res Function(MovieDetailsLoading) _then)
      : super(_value, (v) => _then(v as MovieDetailsLoading));

  @override
  MovieDetailsLoading get _value => super._value as MovieDetailsLoading;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieDetailsLoading(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$MovieDetailsLoading implements MovieDetailsLoading {
  const _$MovieDetailsLoading(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailsState.loading(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieDetailsLoading &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  $MovieDetailsLoadingCopyWith<MovieDetailsLoading> get copyWith =>
      _$MovieDetailsLoadingCopyWithImpl<MovieDetailsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) initial,
    required TResult Function(Movie movie) loading,
    required TResult Function(Movie movie, AppException error) loadFailure,
    required TResult Function(Movie movie) loadSuccess,
  }) {
    return loading(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? initial,
    TResult Function(Movie movie)? loading,
    TResult Function(Movie movie, AppException error)? loadFailure,
    TResult Function(Movie movie)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsFailure value) loadFailure,
    required TResult Function(MovieDetailsSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsFailure value)? loadFailure,
    TResult Function(MovieDetailsSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsLoading implements MovieDetailsState {
  const factory MovieDetailsLoading(Movie movie) = _$MovieDetailsLoading;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieDetailsLoadingCopyWith<MovieDetailsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsFailureCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsFailureCopyWith(
          MovieDetailsFailure value, $Res Function(MovieDetailsFailure) then) =
      _$MovieDetailsFailureCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie, AppException error});
}

/// @nodoc
class _$MovieDetailsFailureCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsFailureCopyWith<$Res> {
  _$MovieDetailsFailureCopyWithImpl(
      MovieDetailsFailure _value, $Res Function(MovieDetailsFailure) _then)
      : super(_value, (v) => _then(v as MovieDetailsFailure));

  @override
  MovieDetailsFailure get _value => super._value as MovieDetailsFailure;

  @override
  $Res call({
    Object? movie = freezed,
    Object? error = freezed,
  }) {
    return _then(MovieDetailsFailure(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$MovieDetailsFailure implements MovieDetailsFailure {
  const _$MovieDetailsFailure(this.movie, this.error);

  @override
  final Movie movie;
  @override
  final AppException error;

  @override
  String toString() {
    return 'MovieDetailsState.loadFailure(movie: $movie, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieDetailsFailure &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movie) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $MovieDetailsFailureCopyWith<MovieDetailsFailure> get copyWith =>
      _$MovieDetailsFailureCopyWithImpl<MovieDetailsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) initial,
    required TResult Function(Movie movie) loading,
    required TResult Function(Movie movie, AppException error) loadFailure,
    required TResult Function(Movie movie) loadSuccess,
  }) {
    return loadFailure(movie, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? initial,
    TResult Function(Movie movie)? loading,
    TResult Function(Movie movie, AppException error)? loadFailure,
    TResult Function(Movie movie)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(movie, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsFailure value) loadFailure,
    required TResult Function(MovieDetailsSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsFailure value)? loadFailure,
    TResult Function(MovieDetailsSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsFailure implements MovieDetailsState {
  const factory MovieDetailsFailure(Movie movie, AppException error) =
      _$MovieDetailsFailure;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  AppException get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieDetailsFailureCopyWith<MovieDetailsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsSuccessCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsSuccessCopyWith(
          MovieDetailsSuccess value, $Res Function(MovieDetailsSuccess) then) =
      _$MovieDetailsSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});
}

/// @nodoc
class _$MovieDetailsSuccessCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsSuccessCopyWith<$Res> {
  _$MovieDetailsSuccessCopyWithImpl(
      MovieDetailsSuccess _value, $Res Function(MovieDetailsSuccess) _then)
      : super(_value, (v) => _then(v as MovieDetailsSuccess));

  @override
  MovieDetailsSuccess get _value => super._value as MovieDetailsSuccess;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieDetailsSuccess(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$MovieDetailsSuccess implements MovieDetailsSuccess {
  const _$MovieDetailsSuccess(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailsState.loadSuccess(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieDetailsSuccess &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  $MovieDetailsSuccessCopyWith<MovieDetailsSuccess> get copyWith =>
      _$MovieDetailsSuccessCopyWithImpl<MovieDetailsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) initial,
    required TResult Function(Movie movie) loading,
    required TResult Function(Movie movie, AppException error) loadFailure,
    required TResult Function(Movie movie) loadSuccess,
  }) {
    return loadSuccess(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? initial,
    TResult Function(Movie movie)? loading,
    TResult Function(Movie movie, AppException error)? loadFailure,
    TResult Function(Movie movie)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsInitial value) initial,
    required TResult Function(MovieDetailsLoading value) loading,
    required TResult Function(MovieDetailsFailure value) loadFailure,
    required TResult Function(MovieDetailsSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsInitial value)? initial,
    TResult Function(MovieDetailsLoading value)? loading,
    TResult Function(MovieDetailsFailure value)? loadFailure,
    TResult Function(MovieDetailsSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsSuccess implements MovieDetailsState {
  const factory MovieDetailsSuccess(Movie movie) = _$MovieDetailsSuccess;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MovieDetailsSuccessCopyWith<MovieDetailsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
