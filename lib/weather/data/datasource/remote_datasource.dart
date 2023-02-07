import 'package:basic_clean_arch_project/core/utils/constants.dart';
import 'package:dio/dio.dart';

import '../model/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountry(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountry(String countryName) async {
    try {
      var response = await Dio().get(
          '${Constants.baseUrl}/weather?q=$countryName&appid=${Constants.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
