import 'package:basic_clean_arch_project/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherByCountryName(this.baseWeatherRepository);
  Future<Weather> execute(String cityName) {
    return baseWeatherRepository.getCurrentWeatherByCountry(cityName);
  }
}
