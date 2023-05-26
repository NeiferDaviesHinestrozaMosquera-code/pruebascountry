
import 'package:dio/dio.dart';
import 'package:pruebacountry/model/country_model.dart';

class ApiCountryProvider {
  final Dio _dio = Dio ();
  final String _url = "https://ensemble-api.open-meteo.com/v1/ensemble?latitude=52.52&longitude=13.41&models=icon_seamless&hourly=temperature_2m";

 Future <CountryModel> fetchCountryList () async {
  
    Response response = await _dio.get(_url);
    return CountryModel.fromJson(response.data);
 
 } 
}