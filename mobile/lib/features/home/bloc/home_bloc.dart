import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/data/weather_repository.dart';
import 'package:weatherapp/utils/date_time_provider.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required WeatherRepository weatherRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _repository = weatherRepository,
        _dateTime = dateTimeProvider,
        super(const HomeState.initial()) {
    on<HomeSearch>(
      _onSearch,
      transformer: (events, mapper) =>
          events.throttleTime(_throttleDuration).switchMap(mapper),
    );

    on<HomeRefresh>(
      _onRefresh,
      transformer: (events, mapper) =>
          events.throttleTime(_throttleDuration).switchMap(mapper),
    );
  }

  static const _throttleDuration = Duration(milliseconds: 200);

  final WeatherRepository _repository;
  final DateTimeProvider _dateTime;

  final _logger = Logger('HomeBloc');

  Future<void> _onSearch(
    HomeSearch event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loadInProgress());

    final query = event.query;

    try {
      await _load(emit, query: query);
    } catch (e, st) {
      _logger.warning('failed _onSearch for event: $event', e, st);
      emit(HomeState.loadFailure(query: query));
    }
  }

  Future<void> _onRefresh(
    HomeRefresh event,
    Emitter<HomeState> emit,
  ) async {
    await state.maybeMap(
      orElse: () => throw StateError(
        'Received HomeRefresh event while not in loadSuccessful state',
      ),
      loadSuccessful: (loadSuccess) async {
        final query =
            '${loadSuccess.location.name}, ${loadSuccess.location.country}';

        try {
          await _load(emit, query: query);
        } catch (e, st) {
          _logger.warning('failed _onRefresh for event: $event', e, st);
          emit(HomeState.loadFailure(query: query));
        }
      },
    );
  }

  Future<void> _load(Emitter<HomeState> emit, {required String query}) async {
    final weather = await _repository.getForecast(query: query);

    final now = _dateTime.now;
    final hours = _getNext12Hours(
      now: now,
      days: weather.forecast.forecastDays,
    );

    emit(
      HomeState.loadSuccessful(
        location: weather.location,
        currentWeather: weather.current,
        forecastToday: weather.forecast.forecastDays.first,
        forecastTomorrow: weather.forecast.forecastDays.last,
        hours: hours,
        updated: now,
      ),
    );
  }

  List<ForecastWeatherHour> _getNext12Hours({
    required DateTime now,
    required List<ForecastWeatherDayDTO> days,
  }) =>
      days
          .expand(
            (e) => e.hours,
          )
          .where(
            (e) =>
                e.dateTime.difference(now) < const Duration(hours: 12) &&
                e.dateTime.difference(now) > Duration.zero,
          )
          .toList();
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.loadInProgress() = HomeLoadInProgress;

  const factory HomeState.loadSuccessful({
    required Location location,
    required CurrentWeather currentWeather,
    required ForecastWeatherDayDTO forecastToday,
    required ForecastWeatherDayDTO forecastTomorrow,
    required List<ForecastWeatherHour> hours,
    required DateTime updated,
  }) = HomeLoadSuccessful;

  const factory HomeState.loadFailure({
    required String query,
  }) = HomeLoadFailure;
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.search({required String query}) = HomeSearch;

  const factory HomeEvent.refresh() = HomeRefresh;
}
