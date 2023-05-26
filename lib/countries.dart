import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pruebacountry/bloc/country_bloc.dart';
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
                } else if (state is CountryLoaded) {
                  return _buildCard(context, state.countryModel);
                } else if (state is CountryError) {
                  return Container();
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, CountryModel model) {
    return ListView.builder(
      itemCount: model.tld.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text("Paises : ${model.name}"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}