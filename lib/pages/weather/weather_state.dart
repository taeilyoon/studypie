import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studypie_test/models/country_model.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState(
      {required DateTime date,
      required CountryModel location}) = _WeatherViewModel;
}
