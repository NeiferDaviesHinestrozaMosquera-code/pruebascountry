import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pruebacountry/bloc/country_bloc.dart';
import 'package:pruebacountry/home/datails.dart';
import 'package:pruebacountry/model/country_model.dart';


class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  final CountryBloc _newsCountryBloc = CountryBloc();

  @override
  void initState() {
    _newsCountryBloc.add(GetCountryList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Countries"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: BlocProvider(
          create: (_) => _newsCountryBloc,
          child: BlocListener<CountryBloc, CountryState>(
            listener: (context, state) {
              if (state is CountryError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message!),
                  ),
                );
              }
            },
            child: BlocBuilder<CountryBloc, CountryState>(
                builder: (context, state) {
              if (state is CountryInitial) {
                return _buildLoading();
              } else if (state is CountryLoading) {
                return _buildLoading();
              } 
              else if (state is CountryLoaded) {
                return _buildCard(context, state.countrylist!);
              }
               else if (state is CountryError) {
                return Container(child: Center(child: Text("No tenemos paises"),), );
              } else {
                return Container(child: Center(child: Text("Api en mantenimiento"),),);
              }
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, List<CountryModel> countryList) {
    return ListView.builder(
      itemCount: countryList.length,
      itemBuilder: (context, index) {
        final country = countryList[index];
        return Container(
          margin: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DatailsScreen(
                            micountrymodel: country,
                          ) 
                      ));
            },
            child: Card(
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      country.flags.png,
                      height: 100,
                    ),
                    SizedBox(height: 5),
                    Text("Pais : ${country.name.official}"),
                    Text("Capital : ${country.capital}"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
