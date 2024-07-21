import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getweathercubit/getweatherstates.dart';
import 'package:weather_app/models/weather_model.dart';

import '../../services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  late WeatherModel weatherModel;
  GetWeatherCubit() : super(WeatherInitialState());
  fetchweather({required String cityname}) async {
    try {
      weatherModel = await WeatherServices(dio: Dio())
          .getcurrentweather(cityname: cityname);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
