// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)
        loadSuccessful,
    required TResult Function(String query) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult? Function(String query)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult Function(String query)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccessful value) loadSuccessful,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoadInProgress value)? loadInProgress,
    TResult? Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult? Function(HomeLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialCopyWith<$Res> {
  factory _$$HomeInitialCopyWith(
          _$HomeInitial value, $Res Function(_$HomeInitial) then) =
      __$$HomeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitial>
    implements _$$HomeInitialCopyWith<$Res> {
  __$$HomeInitialCopyWithImpl(
      _$HomeInitial _value, $Res Function(_$HomeInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitial implements HomeInitial {
  const _$HomeInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)
        loadSuccessful,
    required TResult Function(String query) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult? Function(String query)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult Function(String query)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccessful value) loadSuccessful,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoadInProgress value)? loadInProgress,
    TResult? Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult? Function(HomeLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial() = _$HomeInitial;
}

/// @nodoc
abstract class _$$HomeLoadInProgressCopyWith<$Res> {
  factory _$$HomeLoadInProgressCopyWith(_$HomeLoadInProgress value,
          $Res Function(_$HomeLoadInProgress) then) =
      __$$HomeLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadInProgress>
    implements _$$HomeLoadInProgressCopyWith<$Res> {
  __$$HomeLoadInProgressCopyWithImpl(
      _$HomeLoadInProgress _value, $Res Function(_$HomeLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadInProgress implements HomeLoadInProgress {
  const _$HomeLoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)
        loadSuccessful,
    required TResult Function(String query) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult? Function(String query)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult Function(String query)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccessful value) loadSuccessful,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoadInProgress value)? loadInProgress,
    TResult? Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult? Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeLoadInProgress implements HomeState {
  const factory HomeLoadInProgress() = _$HomeLoadInProgress;
}

/// @nodoc
abstract class _$$HomeLoadSuccessfulCopyWith<$Res> {
  factory _$$HomeLoadSuccessfulCopyWith(_$HomeLoadSuccessful value,
          $Res Function(_$HomeLoadSuccessful) then) =
      __$$HomeLoadSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CurrentWeather currentWeather, Location location, DateTime updated});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$HomeLoadSuccessfulCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadSuccessful>
    implements _$$HomeLoadSuccessfulCopyWith<$Res> {
  __$$HomeLoadSuccessfulCopyWithImpl(
      _$HomeLoadSuccessful _value, $Res Function(_$HomeLoadSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
    Object? location = null,
    Object? updated = null,
  }) {
    return _then(_$HomeLoadSuccessful(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$HomeLoadSuccessful implements HomeLoadSuccessful {
  const _$HomeLoadSuccessful(
      {required this.currentWeather,
      required this.location,
      required this.updated});

  @override
  final CurrentWeather currentWeather;
  @override
  final Location location;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'HomeState.loadSuccessful(currentWeather: $currentWeather, location: $location, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadSuccessful &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentWeather, location, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadSuccessfulCopyWith<_$HomeLoadSuccessful> get copyWith =>
      __$$HomeLoadSuccessfulCopyWithImpl<_$HomeLoadSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)
        loadSuccessful,
    required TResult Function(String query) loadFailure,
  }) {
    return loadSuccessful(currentWeather, location, updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult? Function(String query)? loadFailure,
  }) {
    return loadSuccessful?.call(currentWeather, location, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult Function(String query)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessful != null) {
      return loadSuccessful(currentWeather, location, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccessful value) loadSuccessful,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoadInProgress value)? loadInProgress,
    TResult? Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult? Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessful != null) {
      return loadSuccessful(this);
    }
    return orElse();
  }
}

abstract class HomeLoadSuccessful implements HomeState {
  const factory HomeLoadSuccessful(
      {required final CurrentWeather currentWeather,
      required final Location location,
      required final DateTime updated}) = _$HomeLoadSuccessful;

  CurrentWeather get currentWeather;
  Location get location;
  DateTime get updated;
  @JsonKey(ignore: true)
  _$$HomeLoadSuccessfulCopyWith<_$HomeLoadSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadFailureCopyWith<$Res> {
  factory _$$HomeLoadFailureCopyWith(
          _$HomeLoadFailure value, $Res Function(_$HomeLoadFailure) then) =
      __$$HomeLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$HomeLoadFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadFailure>
    implements _$$HomeLoadFailureCopyWith<$Res> {
  __$$HomeLoadFailureCopyWithImpl(
      _$HomeLoadFailure _value, $Res Function(_$HomeLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$HomeLoadFailure(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeLoadFailure implements HomeLoadFailure {
  const _$HomeLoadFailure({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'HomeState.loadFailure(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadFailure &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadFailureCopyWith<_$HomeLoadFailure> get copyWith =>
      __$$HomeLoadFailureCopyWithImpl<_$HomeLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)
        loadSuccessful,
    required TResult Function(String query) loadFailure,
  }) {
    return loadFailure(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult? Function(String query)? loadFailure,
  }) {
    return loadFailure?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            CurrentWeather currentWeather, Location location, DateTime updated)?
        loadSuccessful,
    TResult Function(String query)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoadInProgress value) loadInProgress,
    required TResult Function(HomeLoadSuccessful value) loadSuccessful,
    required TResult Function(HomeLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoadInProgress value)? loadInProgress,
    TResult? Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult? Function(HomeLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoadInProgress value)? loadInProgress,
    TResult Function(HomeLoadSuccessful value)? loadSuccessful,
    TResult Function(HomeLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class HomeLoadFailure implements HomeState {
  const factory HomeLoadFailure({required final String query}) =
      _$HomeLoadFailure;

  String get query;
  @JsonKey(ignore: true)
  _$$HomeLoadFailureCopyWith<_$HomeLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearch value) search,
    required TResult Function(HomeRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSearch value)? search,
    TResult? Function(HomeRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearch value)? search,
    TResult Function(HomeRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeSearchCopyWith<$Res> {
  factory _$$HomeSearchCopyWith(
          _$HomeSearch value, $Res Function(_$HomeSearch) then) =
      __$$HomeSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$HomeSearchCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSearch>
    implements _$$HomeSearchCopyWith<$Res> {
  __$$HomeSearchCopyWithImpl(
      _$HomeSearch _value, $Res Function(_$HomeSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$HomeSearch(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeSearch implements HomeSearch {
  const _$HomeSearch({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'HomeEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchCopyWith<_$HomeSearch> get copyWith =>
      __$$HomeSearchCopyWithImpl<_$HomeSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() refresh,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearch value) search,
    required TResult Function(HomeRefresh value) refresh,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSearch value)? search,
    TResult? Function(HomeRefresh value)? refresh,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearch value)? search,
    TResult Function(HomeRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class HomeSearch implements HomeEvent {
  const factory HomeSearch({required final String query}) = _$HomeSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$HomeSearchCopyWith<_$HomeSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeRefreshCopyWith<$Res> {
  factory _$$HomeRefreshCopyWith(
          _$HomeRefresh value, $Res Function(_$HomeRefresh) then) =
      __$$HomeRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRefreshCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRefresh>
    implements _$$HomeRefreshCopyWith<$Res> {
  __$$HomeRefreshCopyWithImpl(
      _$HomeRefresh _value, $Res Function(_$HomeRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeRefresh implements HomeRefresh {
  const _$HomeRefresh();

  @override
  String toString() {
    return 'HomeEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearch value) search,
    required TResult Function(HomeRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSearch value)? search,
    TResult? Function(HomeRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearch value)? search,
    TResult Function(HomeRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class HomeRefresh implements HomeEvent {
  const factory HomeRefresh() = _$HomeRefresh;
}
