import 'package:flutter/material.dart';
import 'package:pruebacountry/model/country_model.dart';

class DatailsScreen extends StatelessWidget {
  const DatailsScreen({Key? key, required this.micountrymodel}) : super(key: key);

  final CountryModel micountrymodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(micountrymodel.name.official ,maxLines: 1,),
      ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            height: 200,
            width: double.infinity,
            child: Image.network(
              micountrymodel.flags.png,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Area",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.area} metros cuadrados",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Idiomas",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.languages}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Habitantes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.population}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Mapa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.maps.openStreetMaps} \n" 
                  
                  "\n${micountrymodel.maps.googleMaps}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Coordenadas",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.latlng}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Subregion",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${micountrymodel.subregion.characters}",
                  style: TextStyle(fontSize: 16),
                ),
               SizedBox(
                height: 20,
                child: Text("nirobi.dev"),
               )
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}