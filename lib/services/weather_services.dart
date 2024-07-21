import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices({required this.dio});
  final String baseurl = 'https://api.weatherapi.com/v1';
  final String apikey = "60102cdc5ea148b0936112035241707";

  Future<WeatherModel> getcurrentweather({required String cityname}) async {
    try {
      Response response = await dio.get(
          "https://api.weatherapi.com/v1/forecast.json?key=60102cdc5ea148b0936112035241707&q=$cityname&days=1");
      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errormessage = e.response?.data ?? "oops try later";
      throw Exception(errormessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was a problem try later");
    }
  }
}
