import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/data/weather_repository.dart';
import 'package:weatherapp/features/home/bloc/home_bloc.dart';
import 'package:weatherapp/utils/date_time_provider.dart';

import '../../fakes.dart';
import '../../mocks.dart';

void main() {
  group('HomeBloc', () {
    late WeatherRepository weatherRepository;
    late DateTimeProvider dateTimeProvider;
    late HomeBloc bloc;

    setUpAll(() {
      registerFallbackValue(FakeEmitter<HomeState>());
    });

    setUp(() {
      weatherRepository = MockWeatherRepository();
      dateTimeProvider = MockDateTimeProvider();

      bloc = HomeBloc(
        weatherRepository: weatherRepository,
        dateTimeProvider: dateTimeProvider,
      );
    });

    tearDown(() => bloc.close());

    test('has correct initial state', () {
      expect(bloc.state, const HomeState.initial());
    });

    group('on HomeSearch event', () {
      blocTest<HomeBloc, HomeState>(
        'emits loadInProgress state first',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO,
          );
          when(() => dateTimeProvider.now).thenReturn(now);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(HomeEvent.search(query: someQuery)),
        expect: () => isList.having(
          (list) => list.first,
          'first',
          isA<HomeLoadInProgress>(),
        ),
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadInProgress and loadSuccessful states',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO,
          );
          when(() => dateTimeProvider.now).thenReturn(now);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(HomeEvent.search(query: someQuery)),
        expect: () => [
          isA<HomeLoadInProgress>(),
          isA<HomeLoadSuccessful>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadSuccessful state with correct data',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO,
          );
          when(() => dateTimeProvider.now).thenReturn(now);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(HomeEvent.search(query: someQuery)),
        expect: () => [
          isA<HomeLoadInProgress>(),
          someHomeLoadSuccessfulState,
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadFailure state when exception occurs',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenThrow(
            Exception(),
          );
          when(() => dateTimeProvider.now).thenReturn(now);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(HomeEvent.search(query: someQuery)),
        expect: () => [
          isA<HomeLoadInProgress>(),
          HomeState.loadFailure(query: someQuery),
        ],
      );
    });

    group('on HomeRefresh event', () {
      blocTest<HomeBloc, HomeState>(
        'does not emit loadInProgress',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO,
          );
          when(() => dateTimeProvider.now).thenReturn(now);
        },
        build: () => bloc,
        seed: () => someHomeLoadSuccessfulState,
        act: (bloc) => bloc.add(const HomeEvent.refresh()),
        expect: () => isNot(contains(isA<HomeLoadInProgress>())),
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadSuccessful state',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO,
          );
          when(() => dateTimeProvider.now).thenReturn(later);
        },
        build: () => bloc,
        seed: () => someHomeLoadSuccessfulState,
        act: (bloc) => bloc.add(const HomeEvent.refresh()),
        expect: () => [
          isA<HomeLoadSuccessful>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadSuccessful state with correct updated data',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenAnswer(
            (_) async => someWeatherDTO.copyWith(
              current: someWeatherDTO.current.copyWith(
                tempC: someHomeLoadSuccessfulState.currentWeather.tempC + 1,
              ),
            ),
          );
          when(() => dateTimeProvider.now).thenReturn(later);
        },
        build: () => bloc,
        seed: () => someHomeLoadSuccessfulState,
        act: (bloc) => bloc.add(const HomeEvent.refresh()),
        expect: () => [
          someHomeLoadSuccessfulState.copyWith(
            updated: later,
            currentWeather: someHomeLoadSuccessfulState.currentWeather.copyWith(
              tempC: someHomeLoadSuccessfulState.currentWeather.tempC + 1,
            ),
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits loadFailure state when exception occurs',
        setUp: () {
          when(
            () => weatherRepository.getForecast(query: someQuery),
          ).thenThrow(
            Exception(),
          );
          when(() => dateTimeProvider.now).thenReturn(later);
        },
        build: () => bloc,
        seed: () => someHomeLoadSuccessfulState,
        act: (bloc) => bloc.add(const HomeEvent.refresh()),
        expect: () => [
          HomeState.loadFailure(query: someQuery),
        ],
      );
    });
  });
}

final now = DateTime(2023, 5, 1, 14, 14, 14);
final later = now.add(const Duration(seconds: 1));
final someQuery = '${someLocation.name}, ${someLocation.country}';

const someLocation = Location(name: 'location', country: 'country');

const someCurrentWeather = CurrentWeather(
  cloudCoverage: 10,
  tempC: 10,
  windKph: 10,
  humidity: 10,
  condition: WeatherCondition(
    code: 100,
    text: 'condition',
    icon: 'icon',
  ),
);

final someForecastWeather = ForecastWeatherDTO(
  forecastDays: [
    ForecastWeatherDayDTO(
      date: DateTime(2023, 5),
      day: const ForecastWeatherDay(
        avgTempC: 10,
        maxTempC: 10,
        minTempC: 10,
        maxWindKph: 10,
      ),
      hours: List.generate(
        24,
        (index) => ForecastWeatherHour(
          dateTime: DateTime(2023, 5, 1, index),
          cloudCoverage: 10,
          tempC: 10,
          wind: 10,
        ),
      ),
    ),
    ForecastWeatherDayDTO(
      date: DateTime(2023, 5, 2),
      day: const ForecastWeatherDay(
        avgTempC: 10,
        maxTempC: 10,
        minTempC: 10,
        maxWindKph: 10,
      ),
      hours: List.generate(
        24,
        (index) => ForecastWeatherHour(
          dateTime: DateTime(2023, 5, 2, index),
          cloudCoverage: 10,
          tempC: 10,
          wind: 10,
        ),
      ),
    ),
  ],
);

final someWeatherDTO = WeatherDTO(
  location: someLocation,
  current: someCurrentWeather,
  forecast: someForecastWeather,
);

final someHomeLoadSuccessfulState = HomeLoadSuccessful(
  location: someLocation,
  currentWeather: someCurrentWeather,
  forecastToday: someForecastWeather.forecastDays.first,
  forecastTomorrow: someForecastWeather.forecastDays.last,
  hours: List.generate(
    12,
    (index) => ForecastWeatherHour(
      dateTime: DateTime(2023, 5, 1, now.hour).add(Duration(hours: 1 + index)),
      cloudCoverage: 10,
      tempC: 10,
      wind: 10,
    ),
  ),
  updated: now,
);
