// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:studypie_test/l10n/l10n.dart';
import 'package:studypie_test/pages/weather/weather.dart';
import 'package:weather/weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WeatherCubit(),
      child: const WeatherView(),
    );
  }
}

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WeatherCubit>();
    final count = context.select((WeatherCubit cubit) => cubit.state);
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder<DateTime>(
                    future: cubit.getDate(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text("시간을 가져오는데 문제가 발생 하였습니다.");
                      }
                      if (snapshot.hasData) {
                        //DRAW WIDGET
                        DateTime date = snapshot.data!;
                        return Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('EEEE').format(date),
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                Text(
                                  DateFormat('dd MM yyyy').format(date),
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ]),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StreamBuilder<Weather>(
                    stream: cubit.getWeather().asStream(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        // return Error
                      }
                      if (snapshot.hasData) {
                        //DRAW WIDGET
                        Weather w = snapshot.data!;
                        return Container(
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${w.temperature?.celsius?.floor() ?? "-"} °",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    ),
                                    Text(
                                      w.weatherDescription ?? "-",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    )
                                  ]),
                              Image.network(
                                "http://openweathermap.org/img/w/${w.weatherIcon}.png",
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: WeatherCubit.listOfCountries
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ChoiceChip(
                              label: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Text(e.name)),
                              onSelected: (bool b) {
                                cubit.selectLocation(e);
                              },
                              selected: count.location == e),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
