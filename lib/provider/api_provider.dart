
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pruebacountry/model/country_model.dart';

class ApiCountryProvider {
  final Dio _dio = Dio();
  final String _url = 'https://restcountries.com/v3.1/all';
  
  

  Future<List<CountryModel>?> fetchCountryList() async {

    try {
      final response = await _dio.get(_url);
     

      final countriesnews = <CountryModel>[];

      final responseData = response.data;


      // Recorres el arreglo
      for (var miCountry in responseData) {       

        // asignar el valor actual
        final countrydata = miCountry;

        // conviertes la data
        final country = CountryModel.fromMap(countrydata);

        // agregar al array
        countriesnews.add(country);

        //
      }

      return countriesnews;
      //
    } catch (e) {
     Text(" Error en la peticion : $e");
    }
    return null;
  }
}
