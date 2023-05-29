import 'dart:convert';

class CountryModel {
  final Name name;
  final List<dynamic> tld;
  final bool independent;
  final List<dynamic> capital;
  final String subregion;
  final Map<String, String> languages;
  final List<double> latlng;
  final double area;
  final String flag;
  final Maps maps;
  final int population;
  final Flags flags;

  CountryModel({
    required this.name,
    required this.tld,
    required this.independent,
    required this.capital,
    required this.subregion,
    required this.languages,
    required this.latlng,
    required this.area,
    required this.flag,
    required this.maps,
    required this.population,
    required this.flags,
  });

  factory CountryModel.fromJson(String str) =>
      CountryModel.fromMap(json.decode(str));

  factory CountryModel.fromMap(Map<String, dynamic> json) => CountryModel(
        name: json["name"] == null
            ? Name(common: '', official: '')
            : Name.fromMap(json["name"]),
        tld: json["tld"] == null
            ? []
            : List<String>.from(json["tld"].map((x) => x)),
        independent: json["independent"] ?? false,
        capital: json["capital"] == null
            ? []
            : List<String>.from(json["capital"].map((x) => x)),
        subregion: json["subregion"] ?? '',
        languages: json["languages"] == null
            ? {}
            : Map.from(json["languages"])
                .map((k, v) => MapEntry<String, String>(k, v)),
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        area: json["area"]?.toDouble() ?? 0.0,
        flag: json["flag"] ?? '',
        maps: json["maps"] == null
            ? Maps(googleMaps: '', openStreetMaps: '')
            : Maps.fromMap(json["maps"]),
        population: json["population"] ?? 0,
        flags: json["flags"] == null
            ? Flags(png: '', svg: '')
            : Flags.fromMap(json["flags"]),
      );

  factory CountryModel.empty() => CountryModel(
        name: Name(common: '', official: ''),
        tld: [],
        independent: false,
        capital: [],
        subregion: '',
        languages: {},
        latlng: [],
        area: 0.0,
        flag: '',
        maps: Maps(googleMaps: '', openStreetMaps: ''),
        population: 0,
        flags: Flags(png: '', svg: ''),
      );

  // Map<String, dynamic> toMap() => {
  //       "name": name.toMap(),
  //       "tld": List<dynamic>.from(tld.map((x) => x)),
  //       "independent": independent,
  //       "capital": List<dynamic>.from(capital.map((x) => x)),
  //       "subregion": subregion,
  //       "languages":
  //           Map.from(languages).map((k, v) => MapEntry<String, dynamic>(k, v)),
  //       "latlng": List<dynamic>.from(latlng.map((x) => x)),
  //       "flag": flag,
  //       "maps": maps.toMap(),
  //       "flags": flags.toMap(),
  //     };

  //
}

class CapitalInfo {
  final List<double> latlng;

  CapitalInfo({required this.latlng});

  factory CapitalInfo.fromJson(String str) =>
      CapitalInfo.fromMap(json.decode(str));

  factory CapitalInfo.fromMap(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
      );
}

class Flags {
  final String png;
  final String svg;

  Flags({
    required this.png,
    required this.svg,
  });

  factory Flags.fromJson(String str) => Flags.fromMap(json.decode(str));

  factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
      );
}

class Maps {
  final String googleMaps;
  final String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(String str) => Maps.fromMap(json.decode(str));

  factory Maps.fromMap(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );
}

class Name {
  final String common;
  final String official;

  Name({
    required this.common,
    required this.official,
  });

  factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
      );
}
