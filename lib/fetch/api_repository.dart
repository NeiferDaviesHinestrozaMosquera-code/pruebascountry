

import 'package:pruebacountry/model/country_model.dart';
import 'package:pruebacountry/provider/api_provider.dart';

class ApiCountryRepository {
    final _providerR = ApiCountryProvider();

    Future <CountryModel> fetchCountryList () {
      return _providerR.fetchCountryList();
    }
}

class NetworkError extends Error {}