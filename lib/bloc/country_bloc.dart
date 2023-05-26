import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pruebacountry/fetch/api_repository.dart';
import 'package:pruebacountry/model/country_model.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryInitial()) {

    final ApiCountryRepository _apiCountryRepository = ApiCountryRepository();

    on<GetCountryList>((event, emit) async{
      
      try {
        emit (CountryLoading());
        final countryList = await _apiCountryRepository.fetchCountryList();
        emit (CountryLoaded(countryList));
        
      } on NetworkError {
        emit (CountryError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
