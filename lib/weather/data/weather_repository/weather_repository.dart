import 'package:basic_clean_arch_project/weather/data/datasource/remote_datasource.dart';
import 'package:basic_clean_arch_project/weather/domain/entities/weather.dart';
import 'package:basic_clean_arch_project/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getCurrentWeatherByCountry(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCountry(cityName))!;
  }
}
