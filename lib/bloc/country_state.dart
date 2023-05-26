part of 'country_bloc.dart';

@immutable
abstract class CountryState {}

class CountryInitial extends CountryState {}

class CountryLoading extends CountryState {}

class CountryLoaded extends CountryState {
  final CountryModel countryModel;
   CountryLoaded(this.countryModel);
}

class CountryError extends CountryState {
  final String? message;
  CountryError (this.message);
}
