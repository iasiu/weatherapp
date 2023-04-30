// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String name, String country});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String country});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_$_Location(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location({required this.name, required this.country});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'Location(name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String name,
      required final String country}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherConditionCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$_WeatherConditionCopyWith(
          _$_WeatherCondition value, $Res Function(_$_WeatherCondition) then) =
      __$$_WeatherConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$_WeatherConditionCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$_WeatherCondition>
    implements _$$_WeatherConditionCopyWith<$Res> {
  __$$_WeatherConditionCopyWithImpl(
      _$_WeatherCondition _value, $Res Function(_$_WeatherCondition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$_WeatherCondition(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherCondition extends _WeatherCondition {
  const _$_WeatherCondition(
      {required this.text, required this.icon, required this.code})
      : super._();

  factory _$_WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherConditionFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherCondition &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherConditionCopyWith<_$_WeatherCondition> get copyWith =>
      __$$_WeatherConditionCopyWithImpl<_$_WeatherCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherConditionToJson(
      this,
    );
  }
}

abstract class _WeatherCondition extends WeatherCondition {
  const factory _WeatherCondition(
      {required final String text,
      required final String icon,
      required final int code}) = _$_WeatherCondition;
  const _WeatherCondition._() : super._();

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$_WeatherCondition.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherConditionCopyWith<_$_WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloud')
  int get cloudCoverage => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'cloud') int cloudCoverage,
      int humidity,
      WeatherCondition condition});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? windKph = null,
    Object? cloudCoverage = null,
    Object? humidity = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      cloudCoverage: null == cloudCoverage
          ? _value.cloudCoverage
          : cloudCoverage // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'cloud') int cloudCoverage,
      int humidity,
      WeatherCondition condition});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$_CurrentWeather>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? windKph = null,
    Object? cloudCoverage = null,
    Object? humidity = null,
    Object? condition = null,
  }) {
    return _then(_$_CurrentWeather(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      cloudCoverage: null == cloudCoverage
          ? _value.cloudCoverage
          : cloudCoverage // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {@JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'wind_kph') required this.windKph,
      @JsonKey(name: 'cloud') required this.cloudCoverage,
      required this.humidity,
      required this.condition});

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double tempC;
  @override
  @JsonKey(name: 'wind_kph')
  final double windKph;
  @override
  @JsonKey(name: 'cloud')
  final int cloudCoverage;
  @override
  final int humidity;
  @override
  final WeatherCondition condition;

  @override
  String toString() {
    return 'CurrentWeather(tempC: $tempC, windKph: $windKph, cloudCoverage: $cloudCoverage, humidity: $humidity, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.cloudCoverage, cloudCoverage) ||
                other.cloudCoverage == cloudCoverage) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tempC, windKph, cloudCoverage, humidity, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {@JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'wind_kph') required final double windKph,
      @JsonKey(name: 'cloud') required final int cloudCoverage,
      required final int humidity,
      required final WeatherCondition condition}) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get tempC;
  @override
  @JsonKey(name: 'wind_kph')
  double get windKph;
  @override
  @JsonKey(name: 'cloud')
  int get cloudCoverage;
  @override
  int get humidity;
  @override
  WeatherCondition get condition;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherHour _$ForecastWeatherHourFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherHour.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherHour {
  @JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
  DateTime get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloud')
  double get cloudCoverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherHourCopyWith<ForecastWeatherHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherHourCopyWith<$Res> {
  factory $ForecastWeatherHourCopyWith(
          ForecastWeatherHour value, $Res Function(ForecastWeatherHour) then) =
      _$ForecastWeatherHourCopyWithImpl<$Res, ForecastWeatherHour>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
          DateTime dateTime,
      @JsonKey(name: 'temp_c')
          double tempC,
      @JsonKey(name: 'cloud')
          double cloudCoverage,
      @JsonKey(name: 'wind_mph')
          double wind});
}

/// @nodoc
class _$ForecastWeatherHourCopyWithImpl<$Res, $Val extends ForecastWeatherHour>
    implements $ForecastWeatherHourCopyWith<$Res> {
  _$ForecastWeatherHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? tempC = null,
    Object? cloudCoverage = null,
    Object? wind = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      cloudCoverage: null == cloudCoverage
          ? _value.cloudCoverage
          : cloudCoverage // ignore: cast_nullable_to_non_nullable
              as double,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherHourCopyWith<$Res>
    implements $ForecastWeatherHourCopyWith<$Res> {
  factory _$$_ForecastWeatherHourCopyWith(_$_ForecastWeatherHour value,
          $Res Function(_$_ForecastWeatherHour) then) =
      __$$_ForecastWeatherHourCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
          DateTime dateTime,
      @JsonKey(name: 'temp_c')
          double tempC,
      @JsonKey(name: 'cloud')
          double cloudCoverage,
      @JsonKey(name: 'wind_mph')
          double wind});
}

/// @nodoc
class __$$_ForecastWeatherHourCopyWithImpl<$Res>
    extends _$ForecastWeatherHourCopyWithImpl<$Res, _$_ForecastWeatherHour>
    implements _$$_ForecastWeatherHourCopyWith<$Res> {
  __$$_ForecastWeatherHourCopyWithImpl(_$_ForecastWeatherHour _value,
      $Res Function(_$_ForecastWeatherHour) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? tempC = null,
    Object? cloudCoverage = null,
    Object? wind = null,
  }) {
    return _then(_$_ForecastWeatherHour(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      cloudCoverage: null == cloudCoverage
          ? _value.cloudCoverage
          : cloudCoverage // ignore: cast_nullable_to_non_nullable
              as double,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeatherHour implements _ForecastWeatherHour {
  const _$_ForecastWeatherHour(
      {@JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
          required this.dateTime,
      @JsonKey(name: 'temp_c')
          required this.tempC,
      @JsonKey(name: 'cloud')
          required this.cloudCoverage,
      @JsonKey(name: 'wind_mph')
          required this.wind});

  factory _$_ForecastWeatherHour.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherHourFromJson(json);

  @override
  @JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
  final DateTime dateTime;
  @override
  @JsonKey(name: 'temp_c')
  final double tempC;
  @override
  @JsonKey(name: 'cloud')
  final double cloudCoverage;
  @override
  @JsonKey(name: 'wind_mph')
  final double wind;

  @override
  String toString() {
    return 'ForecastWeatherHour(dateTime: $dateTime, tempC: $tempC, cloudCoverage: $cloudCoverage, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeatherHour &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.cloudCoverage, cloudCoverage) ||
                other.cloudCoverage == cloudCoverage) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, tempC, cloudCoverage, wind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherHourCopyWith<_$_ForecastWeatherHour> get copyWith =>
      __$$_ForecastWeatherHourCopyWithImpl<_$_ForecastWeatherHour>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherHourToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherHour implements ForecastWeatherHour {
  const factory _ForecastWeatherHour(
      {@JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
          required final DateTime dateTime,
      @JsonKey(name: 'temp_c')
          required final double tempC,
      @JsonKey(name: 'cloud')
          required final double cloudCoverage,
      @JsonKey(name: 'wind_mph')
          required final double wind}) = _$_ForecastWeatherHour;

  factory _ForecastWeatherHour.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeatherHour.fromJson;

  @override
  @JsonKey(name: 'time_epoch', fromJson: dateTimefromJson)
  DateTime get dateTime;
  @override
  @JsonKey(name: 'temp_c')
  double get tempC;
  @override
  @JsonKey(name: 'cloud')
  double get cloudCoverage;
  @override
  @JsonKey(name: 'wind_mph')
  double get wind;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherHourCopyWith<_$_ForecastWeatherHour> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherDay _$ForecastWeatherDayFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherDay {
  @JsonKey(name: 'avgtemp_c')
  double get avgTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_c')
  double get maxTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double get minTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_kph')
  double get maxWindKph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherDayCopyWith<ForecastWeatherDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDayCopyWith<$Res> {
  factory $ForecastWeatherDayCopyWith(
          ForecastWeatherDay value, $Res Function(ForecastWeatherDay) then) =
      _$ForecastWeatherDayCopyWithImpl<$Res, ForecastWeatherDay>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double avgTempC,
      @JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'maxwind_kph') double maxWindKph});
}

/// @nodoc
class _$ForecastWeatherDayCopyWithImpl<$Res, $Val extends ForecastWeatherDay>
    implements $ForecastWeatherDayCopyWith<$Res> {
  _$ForecastWeatherDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTempC = null,
    Object? maxTempC = null,
    Object? minTempC = null,
    Object? maxWindKph = null,
  }) {
    return _then(_value.copyWith(
      avgTempC: null == avgTempC
          ? _value.avgTempC
          : avgTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxTempC: null == maxTempC
          ? _value.maxTempC
          : maxTempC // ignore: cast_nullable_to_non_nullable
              as double,
      minTempC: null == minTempC
          ? _value.minTempC
          : minTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxWindKph: null == maxWindKph
          ? _value.maxWindKph
          : maxWindKph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherDayCopyWith<$Res>
    implements $ForecastWeatherDayCopyWith<$Res> {
  factory _$$_ForecastWeatherDayCopyWith(_$_ForecastWeatherDay value,
          $Res Function(_$_ForecastWeatherDay) then) =
      __$$_ForecastWeatherDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double avgTempC,
      @JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'maxwind_kph') double maxWindKph});
}

/// @nodoc
class __$$_ForecastWeatherDayCopyWithImpl<$Res>
    extends _$ForecastWeatherDayCopyWithImpl<$Res, _$_ForecastWeatherDay>
    implements _$$_ForecastWeatherDayCopyWith<$Res> {
  __$$_ForecastWeatherDayCopyWithImpl(
      _$_ForecastWeatherDay _value, $Res Function(_$_ForecastWeatherDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTempC = null,
    Object? maxTempC = null,
    Object? minTempC = null,
    Object? maxWindKph = null,
  }) {
    return _then(_$_ForecastWeatherDay(
      avgTempC: null == avgTempC
          ? _value.avgTempC
          : avgTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxTempC: null == maxTempC
          ? _value.maxTempC
          : maxTempC // ignore: cast_nullable_to_non_nullable
              as double,
      minTempC: null == minTempC
          ? _value.minTempC
          : minTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxWindKph: null == maxWindKph
          ? _value.maxWindKph
          : maxWindKph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeatherDay implements _ForecastWeatherDay {
  const _$_ForecastWeatherDay(
      {@JsonKey(name: 'avgtemp_c') required this.avgTempC,
      @JsonKey(name: 'maxtemp_c') required this.maxTempC,
      @JsonKey(name: 'mintemp_c') required this.minTempC,
      @JsonKey(name: 'maxwind_kph') required this.maxWindKph});

  factory _$_ForecastWeatherDay.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherDayFromJson(json);

  @override
  @JsonKey(name: 'avgtemp_c')
  final double avgTempC;
  @override
  @JsonKey(name: 'maxtemp_c')
  final double maxTempC;
  @override
  @JsonKey(name: 'mintemp_c')
  final double minTempC;
  @override
  @JsonKey(name: 'maxwind_kph')
  final double maxWindKph;

  @override
  String toString() {
    return 'ForecastWeatherDay(avgTempC: $avgTempC, maxTempC: $maxTempC, minTempC: $minTempC, maxWindKph: $maxWindKph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeatherDay &&
            (identical(other.avgTempC, avgTempC) ||
                other.avgTempC == avgTempC) &&
            (identical(other.maxTempC, maxTempC) ||
                other.maxTempC == maxTempC) &&
            (identical(other.minTempC, minTempC) ||
                other.minTempC == minTempC) &&
            (identical(other.maxWindKph, maxWindKph) ||
                other.maxWindKph == maxWindKph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, avgTempC, maxTempC, minTempC, maxWindKph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherDayCopyWith<_$_ForecastWeatherDay> get copyWith =>
      __$$_ForecastWeatherDayCopyWithImpl<_$_ForecastWeatherDay>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherDayToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherDay implements ForecastWeatherDay {
  const factory _ForecastWeatherDay(
          {@JsonKey(name: 'avgtemp_c') required final double avgTempC,
          @JsonKey(name: 'maxtemp_c') required final double maxTempC,
          @JsonKey(name: 'mintemp_c') required final double minTempC,
          @JsonKey(name: 'maxwind_kph') required final double maxWindKph}) =
      _$_ForecastWeatherDay;

  factory _ForecastWeatherDay.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeatherDay.fromJson;

  @override
  @JsonKey(name: 'avgtemp_c')
  double get avgTempC;
  @override
  @JsonKey(name: 'maxtemp_c')
  double get maxTempC;
  @override
  @JsonKey(name: 'mintemp_c')
  double get minTempC;
  @override
  @JsonKey(name: 'maxwind_kph')
  double get maxWindKph;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherDayCopyWith<_$_ForecastWeatherDay> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherDayDTO _$ForecastWeatherDayDTOFromJson(
    Map<String, dynamic> json) {
  return _ForecastWeatherDayDTO.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherDayDTO {
  @JsonKey(name: 'date_epoch', fromJson: dateTimefromJson)
  DateTime get date => throw _privateConstructorUsedError;
  ForecastWeatherDay get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour')
  List<ForecastWeatherHour> get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherDayDTOCopyWith<ForecastWeatherDayDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDayDTOCopyWith<$Res> {
  factory $ForecastWeatherDayDTOCopyWith(ForecastWeatherDayDTO value,
          $Res Function(ForecastWeatherDayDTO) then) =
      _$ForecastWeatherDayDTOCopyWithImpl<$Res, ForecastWeatherDayDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date_epoch', fromJson: dateTimefromJson) DateTime date,
      ForecastWeatherDay day,
      @JsonKey(name: 'hour') List<ForecastWeatherHour> hours});

  $ForecastWeatherDayCopyWith<$Res> get day;
}

/// @nodoc
class _$ForecastWeatherDayDTOCopyWithImpl<$Res,
        $Val extends ForecastWeatherDayDTO>
    implements $ForecastWeatherDayDTOCopyWith<$Res> {
  _$ForecastWeatherDayDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastWeatherDay,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeatherHour>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherDayCopyWith<$Res> get day {
    return $ForecastWeatherDayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherDayDTOCopyWith<$Res>
    implements $ForecastWeatherDayDTOCopyWith<$Res> {
  factory _$$_ForecastWeatherDayDTOCopyWith(_$_ForecastWeatherDayDTO value,
          $Res Function(_$_ForecastWeatherDayDTO) then) =
      __$$_ForecastWeatherDayDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date_epoch', fromJson: dateTimefromJson) DateTime date,
      ForecastWeatherDay day,
      @JsonKey(name: 'hour') List<ForecastWeatherHour> hours});

  @override
  $ForecastWeatherDayCopyWith<$Res> get day;
}

/// @nodoc
class __$$_ForecastWeatherDayDTOCopyWithImpl<$Res>
    extends _$ForecastWeatherDayDTOCopyWithImpl<$Res, _$_ForecastWeatherDayDTO>
    implements _$$_ForecastWeatherDayDTOCopyWith<$Res> {
  __$$_ForecastWeatherDayDTOCopyWithImpl(_$_ForecastWeatherDayDTO _value,
      $Res Function(_$_ForecastWeatherDayDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? hours = null,
  }) {
    return _then(_$_ForecastWeatherDayDTO(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastWeatherDay,
      hours: null == hours
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeatherHour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeatherDayDTO implements _ForecastWeatherDayDTO {
  const _$_ForecastWeatherDayDTO(
      {@JsonKey(name: 'date_epoch', fromJson: dateTimefromJson)
          required this.date,
      required this.day,
      @JsonKey(name: 'hour')
          required final List<ForecastWeatherHour> hours})
      : _hours = hours;

  factory _$_ForecastWeatherDayDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherDayDTOFromJson(json);

  @override
  @JsonKey(name: 'date_epoch', fromJson: dateTimefromJson)
  final DateTime date;
  @override
  final ForecastWeatherDay day;
  final List<ForecastWeatherHour> _hours;
  @override
  @JsonKey(name: 'hour')
  List<ForecastWeatherHour> get hours {
    if (_hours is EqualUnmodifiableListView) return _hours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hours);
  }

  @override
  String toString() {
    return 'ForecastWeatherDayDTO(date: $date, day: $day, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeatherDayDTO &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._hours, _hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, day, const DeepCollectionEquality().hash(_hours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherDayDTOCopyWith<_$_ForecastWeatherDayDTO> get copyWith =>
      __$$_ForecastWeatherDayDTOCopyWithImpl<_$_ForecastWeatherDayDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherDayDTOToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherDayDTO implements ForecastWeatherDayDTO {
  const factory _ForecastWeatherDayDTO(
          {@JsonKey(name: 'date_epoch', fromJson: dateTimefromJson)
              required final DateTime date,
          required final ForecastWeatherDay day,
          @JsonKey(name: 'hour')
              required final List<ForecastWeatherHour> hours}) =
      _$_ForecastWeatherDayDTO;

  factory _ForecastWeatherDayDTO.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeatherDayDTO.fromJson;

  @override
  @JsonKey(name: 'date_epoch', fromJson: dateTimefromJson)
  DateTime get date;
  @override
  ForecastWeatherDay get day;
  @override
  @JsonKey(name: 'hour')
  List<ForecastWeatherHour> get hours;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherDayDTOCopyWith<_$_ForecastWeatherDayDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherDTO _$ForecastWeatherDTOFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherDTO {
  @JsonKey(name: 'forecastday')
  List<ForecastWeatherDayDTO> get forecastDays =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherDTOCopyWith<ForecastWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDTOCopyWith<$Res> {
  factory $ForecastWeatherDTOCopyWith(
          ForecastWeatherDTO value, $Res Function(ForecastWeatherDTO) then) =
      _$ForecastWeatherDTOCopyWithImpl<$Res, ForecastWeatherDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'forecastday') List<ForecastWeatherDayDTO> forecastDays});
}

/// @nodoc
class _$ForecastWeatherDTOCopyWithImpl<$Res, $Val extends ForecastWeatherDTO>
    implements $ForecastWeatherDTOCopyWith<$Res> {
  _$ForecastWeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastDays = null,
  }) {
    return _then(_value.copyWith(
      forecastDays: null == forecastDays
          ? _value.forecastDays
          : forecastDays // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeatherDayDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherDTOCopyWith<$Res>
    implements $ForecastWeatherDTOCopyWith<$Res> {
  factory _$$_ForecastWeatherDTOCopyWith(_$_ForecastWeatherDTO value,
          $Res Function(_$_ForecastWeatherDTO) then) =
      __$$_ForecastWeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'forecastday') List<ForecastWeatherDayDTO> forecastDays});
}

/// @nodoc
class __$$_ForecastWeatherDTOCopyWithImpl<$Res>
    extends _$ForecastWeatherDTOCopyWithImpl<$Res, _$_ForecastWeatherDTO>
    implements _$$_ForecastWeatherDTOCopyWith<$Res> {
  __$$_ForecastWeatherDTOCopyWithImpl(
      _$_ForecastWeatherDTO _value, $Res Function(_$_ForecastWeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastDays = null,
  }) {
    return _then(_$_ForecastWeatherDTO(
      forecastDays: null == forecastDays
          ? _value._forecastDays
          : forecastDays // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeatherDayDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeatherDTO implements _ForecastWeatherDTO {
  const _$_ForecastWeatherDTO(
      {@JsonKey(name: 'forecastday')
          required final List<ForecastWeatherDayDTO> forecastDays})
      : _forecastDays = forecastDays;

  factory _$_ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherDTOFromJson(json);

  final List<ForecastWeatherDayDTO> _forecastDays;
  @override
  @JsonKey(name: 'forecastday')
  List<ForecastWeatherDayDTO> get forecastDays {
    if (_forecastDays is EqualUnmodifiableListView) return _forecastDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastDays);
  }

  @override
  String toString() {
    return 'ForecastWeatherDTO(forecastDays: $forecastDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeatherDTO &&
            const DeepCollectionEquality()
                .equals(other._forecastDays, _forecastDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherDTOCopyWith<_$_ForecastWeatherDTO> get copyWith =>
      __$$_ForecastWeatherDTOCopyWithImpl<_$_ForecastWeatherDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherDTOToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherDTO implements ForecastWeatherDTO {
  const factory _ForecastWeatherDTO(
          {@JsonKey(name: 'forecastday')
              required final List<ForecastWeatherDayDTO> forecastDays}) =
      _$_ForecastWeatherDTO;

  factory _ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeatherDTO.fromJson;

  @override
  @JsonKey(name: 'forecastday')
  List<ForecastWeatherDayDTO> get forecastDays;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherDTOCopyWith<_$_ForecastWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeatherDTO _$CurrentWeatherDTOFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherDTO {
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentWeather get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDTOCopyWith<CurrentWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDTOCopyWith<$Res> {
  factory $CurrentWeatherDTOCopyWith(
          CurrentWeatherDTO value, $Res Function(CurrentWeatherDTO) then) =
      _$CurrentWeatherDTOCopyWithImpl<$Res, CurrentWeatherDTO>;
  @useResult
  $Res call(
      {Location location, @JsonKey(name: 'current') CurrentWeather weather});

  $LocationCopyWith<$Res> get location;
  $CurrentWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$CurrentWeatherDTOCopyWithImpl<$Res, $Val extends CurrentWeatherDTO>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  _$CurrentWeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get weather {
    return $CurrentWeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherDTOCopyWith<$Res>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  factory _$$_CurrentWeatherDTOCopyWith(_$_CurrentWeatherDTO value,
          $Res Function(_$_CurrentWeatherDTO) then) =
      __$$_CurrentWeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location location, @JsonKey(name: 'current') CurrentWeather weather});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_CurrentWeatherDTOCopyWithImpl<$Res>
    extends _$CurrentWeatherDTOCopyWithImpl<$Res, _$_CurrentWeatherDTO>
    implements _$$_CurrentWeatherDTOCopyWith<$Res> {
  __$$_CurrentWeatherDTOCopyWithImpl(
      _$_CurrentWeatherDTO _value, $Res Function(_$_CurrentWeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? weather = null,
  }) {
    return _then(_$_CurrentWeatherDTO(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherDTO implements _CurrentWeatherDTO {
  const _$_CurrentWeatherDTO(
      {required this.location,
      @JsonKey(name: 'current') required this.weather});

  factory _$_CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherDTOFromJson(json);

  @override
  final Location location;
  @override
  @JsonKey(name: 'current')
  final CurrentWeather weather;

  @override
  String toString() {
    return 'CurrentWeatherDTO(location: $location, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeatherDTO &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherDTOCopyWith<_$_CurrentWeatherDTO> get copyWith =>
      __$$_CurrentWeatherDTOCopyWithImpl<_$_CurrentWeatherDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherDTOToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherDTO implements CurrentWeatherDTO {
  const factory _CurrentWeatherDTO(
          {required final Location location,
          @JsonKey(name: 'current') required final CurrentWeather weather}) =
      _$_CurrentWeatherDTO;

  factory _CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeatherDTO.fromJson;

  @override
  Location get location;
  @override
  @JsonKey(name: 'current')
  CurrentWeather get weather;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherDTOCopyWith<_$_CurrentWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  Location get location => throw _privateConstructorUsedError;
  CurrentWeather get current => throw _privateConstructorUsedError;
  ForecastWeatherDTO get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res, WeatherDTO>;
  @useResult
  $Res call(
      {Location location, CurrentWeather current, ForecastWeatherDTO forecast});

  $LocationCopyWith<$Res> get location;
  $CurrentWeatherCopyWith<$Res> get current;
  $ForecastWeatherDTOCopyWith<$Res> get forecast;
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res, $Val extends WeatherDTO>
    implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeatherDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get current {
    return $CurrentWeatherCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherDTOCopyWith<$Res> get forecast {
    return $ForecastWeatherDTOCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherDTOCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$$_WeatherDTOCopyWith(
          _$_WeatherDTO value, $Res Function(_$_WeatherDTO) then) =
      __$$_WeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location location, CurrentWeather current, ForecastWeatherDTO forecast});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentWeatherCopyWith<$Res> get current;
  @override
  $ForecastWeatherDTOCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$_WeatherDTOCopyWithImpl<$Res>
    extends _$WeatherDTOCopyWithImpl<$Res, _$_WeatherDTO>
    implements _$$_WeatherDTOCopyWith<$Res> {
  __$$_WeatherDTOCopyWithImpl(
      _$_WeatherDTO _value, $Res Function(_$_WeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_$_WeatherDTO(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeatherDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDTO implements _WeatherDTO {
  const _$_WeatherDTO(
      {required this.location, required this.current, required this.forecast});

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  final Location location;
  @override
  final CurrentWeather current;
  @override
  final ForecastWeatherDTO forecast;

  @override
  String toString() {
    return 'WeatherDTO(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDTO &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      __$$_WeatherDTOCopyWithImpl<_$_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDTOToJson(
      this,
    );
  }
}

abstract class _WeatherDTO implements WeatherDTO {
  const factory _WeatherDTO(
      {required final Location location,
      required final CurrentWeather current,
      required final ForecastWeatherDTO forecast}) = _$_WeatherDTO;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  Location get location;
  @override
  CurrentWeather get current;
  @override
  ForecastWeatherDTO get forecast;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
