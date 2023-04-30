import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/data/weather_repository.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required WeatherRepository weatherRepository})
      : _repository = weatherRepository,
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
  final _logger = Logger('HomeBloc');

  Future<void> _onSearch(
    HomeSearch event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loadInProgress());

    final query = event.query;

    try {
      final weather = await _repository.getForecast(query: query);

      emit(
        HomeState.loadSuccessful(
          currentWeather: weather.current,
          location: weather.location,
          updated: DateTime.now(),
        ),
      );
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
          final weather = await _repository.getForecast(query: query);

          emit(
            HomeState.loadSuccessful(
              currentWeather: weather.current,
              location: weather.location,
              updated: DateTime.now(),
            ),
          );
        } catch (e, st) {
          _logger.warning('failed _onRefresh for event: $event', e, st);
          emit(HomeState.loadFailure(query: query));
        }
      },
    );
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.loadInProgress() = HomeLoadInProgress;

  const factory HomeState.loadSuccessful({
    required CurrentWeather currentWeather,
    required Location location,
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
