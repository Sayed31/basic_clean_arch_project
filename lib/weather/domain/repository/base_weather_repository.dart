import 'package:basic_clean_arch_project/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getCurrentWeatherByCountry(String cityName);
}
