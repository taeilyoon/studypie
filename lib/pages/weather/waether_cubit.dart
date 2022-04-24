import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:studypie_test/config/global.dart';
import 'package:studypie_test/models/country_model.dart';
import 'package:studypie_test/pages/weather/weather_state.dart';
import 'package:weather/weather.dart';

class WeatherCubit extends Cubit<WeatherState> {
  static List<CountryModel> listOfCountries = [
    CountryModel(name: "서울", lat: 37.54457732085584, lon: 126.96899414062501),
    CountryModel(name: "뉴욕", lat: 40.7127281, lon: -74.0060152),
    CountryModel(name: "시드니", lat: -33.8698439, lon: 151.2082848),
  ];

  WeatherCubit()
      : super(WeatherState(
            date: DateTime.now(), location: listOfCountries.first));

  void selectLocation(CountryModel country) =>
      emit(state.copyWith(location: country));

  Future<Weather> getWeather() {
    return wf.currentWeatherByLocation(
        state.location!.lat, state.location!.lon);
  }

  Future<DateTime> getDate() {
    return Future.value(DateTime.now());
  }
}
