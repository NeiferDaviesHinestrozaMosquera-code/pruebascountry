import 'package:pruebacountry/model/country_model.dart';
import 'package:pruebacountry/provider/api_provider.dart';

class ApiCountryRepository {
    final _providerR = ApiCountryProvider();

    Future <List<CountryModel>?> fetchCountryList () async{
      final rest = await  _providerR.fetchCountryList();
       return rest;

    }
}

class NetworkError extends Error {}