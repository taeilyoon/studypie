// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherViewModel call(
      {required DateTime date, required CountryModel location}) {
    return _WeatherViewModel(
      date: date,
      location: location,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  DateTime get date => throw _privateConstructorUsedError;
  CountryModel get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({DateTime date, CountryModel location});

  $CountryModelCopyWith<$Res> get location;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CountryModel,
    ));
  }

  @override
  $CountryModelCopyWith<$Res> get location {
    return $CountryModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherViewModelCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherViewModelCopyWith(
          _WeatherViewModel value, $Res Function(_WeatherViewModel) then) =
      __$WeatherViewModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, CountryModel location});

  @override
  $CountryModelCopyWith<$Res> get location;
}

/// @nodoc
class __$WeatherViewModelCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherViewModelCopyWith<$Res> {
  __$WeatherViewModelCopyWithImpl(
      _WeatherViewModel _value, $Res Function(_WeatherViewModel) _then)
      : super(_value, (v) => _then(v as _WeatherViewModel));

  @override
  _WeatherViewModel get _value => super._value as _WeatherViewModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? location = freezed,
  }) {
    return _then(_WeatherViewModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CountryModel,
    ));
  }
}

/// @nodoc

class _$_WeatherViewModel implements _WeatherViewModel {
  _$_WeatherViewModel({required this.date, required this.location});

  @override
  final DateTime date;
  @override
  final CountryModel location;

  @override
  String toString() {
    return 'WeatherState(date: $date, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherViewModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$WeatherViewModelCopyWith<_WeatherViewModel> get copyWith =>
      __$WeatherViewModelCopyWithImpl<_WeatherViewModel>(this, _$identity);
}

abstract class _WeatherViewModel implements WeatherState {
  factory _WeatherViewModel(
      {required DateTime date,
      required CountryModel location}) = _$_WeatherViewModel;

  @override
  DateTime get date;
  @override
  CountryModel get location;
  @override
  @JsonKey(ignore: true)
  _$WeatherViewModelCopyWith<_WeatherViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
