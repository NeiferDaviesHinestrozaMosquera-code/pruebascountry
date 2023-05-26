// To parse this JSON data, do
//
//     final countryModel = countryModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class CountryModel {
    final Name name;
    final List<String> tld;
    final String cca2;
    final String ccn3;
    final String cca3;
    final String cioc;
    final bool independent;
    final Status status;
    final bool unMember;
    final Currencies currencies;
    final Idd idd;
    final List<String> capital;
    final List<String> altSpellings;
    final Region region;
    final String subregion;
    final Map<String, String> languages;
    final Map<String, Translation> translations;
    final List<double> latlng;
    final bool landlocked;
    final double area;
    final Demonyms demonyms;
    final String flag;
    final Maps maps;
    final int population;
    final String fifa;
    final Car car;
    final List<String> timezones;
    final List<Continent> continents;
    final Flags flags;
    final CoatOfArms coatOfArms;
    final StartOfWeek startOfWeek;
    final CapitalInfo capitalInfo;
    final Map<String, double> gini;
    final PostalCode postalCode;
    final List<String> borders;


    CountryModel({
        required this.name,
        required this.tld,
        required this.cca2,
        required this.ccn3,
        required this.cca3,
        required this.cioc,
        required this.independent,
        required this.status,
        required this.unMember,
        required this.currencies,
        required this.idd,
        required this.capital,
        required this.altSpellings,
        required this.region,
        required this.subregion,
        required this.languages,
        required this.translations,
        required this.latlng,
        required this.landlocked,
        required this.area,
        required this.demonyms,
        required this.flag,
        required this.maps,
        required this.population,
        required this.fifa,
        required this.car,
        required this.timezones,
        required this.continents,
        required this.flags,
        required this.coatOfArms,
        required this.startOfWeek,
        required this.capitalInfo,
        required this.gini,
        required this.postalCode,
        required this.borders,     
    });
    

    factory CountryModel.fromJson(String str) => CountryModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CountryModel.fromMap(Map<String, dynamic> json) => CountryModel(
        name: Name.fromMap(json["name"]),
        tld: List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: statusValues.map[json["status"]]!,
        unMember: json["unMember"],
        currencies: Currencies.fromMap(json["currencies"]),
        idd: Idd.fromMap(json["idd"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: regionValues.map[json["region"]]!,
        subregion: json["subregion"],
        languages: Map.from(json["languages"]).map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromMap(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"]?.toDouble(),
        demonyms: Demonyms.fromMap(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromMap(json["maps"]),
        population: json["population"],
        fifa: json["fifa"],
        car: Car.fromMap(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<Continent>.from(json["continents"].map((x) => continentValues.map[x]!)),
        flags: Flags.fromMap(json["flags"]),
        coatOfArms: CoatOfArms.fromMap(json["coatOfArms"]),
        startOfWeek: startOfWeekValues.map[json["startOfWeek"]]!,
        capitalInfo: CapitalInfo.fromMap(json["capitalInfo"]),
        gini: Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        postalCode: PostalCode.fromMap(json["postalCode"]),
        borders: List<String>.from(json["borders"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "name": name.toMap(),
        "tld": List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": statusValues.reverse[status],
        "unMember": unMember,
        "currencies": currencies.toMap(),
        "idd": idd.toMap(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": regionValues.reverse[region],
        "subregion": subregion,
        "languages": Map.from(languages).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms.toMap(),
        "flag": flag,
        "maps": maps.toMap(),
        "population": population,
        "fifa": fifa,
        "car": car.toMap(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => continentValues.reverse[x])),
        "flags": flags.toMap(),
        "coatOfArms": coatOfArms.toMap(),
        "startOfWeek": startOfWeekValues.reverse[startOfWeek],
        "capitalInfo": capitalInfo.toMap(),
        "gini": Map.from(gini).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "postalCode": postalCode.toMap(),
        "borders": List<dynamic>.from(borders.map((x) => x)),
    };
}

class CapitalInfo {
    final List<double> latlng;

    CapitalInfo({
        required this.latlng,
    });

    factory CapitalInfo.fromJson(String str) => CapitalInfo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CapitalInfo.fromMap(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toMap() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
    };
}

class Car {
    final List<String> signs;
    final Side side;

    Car({
        required this.signs,
        required this.side,
    });

    factory Car.fromJson(String str) => Car.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Car.fromMap(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: sideValues.map[json["side"]]!,
    );

    Map<String, dynamic> toMap() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": sideValues.reverse[side],
    };
}

enum Side { LEFT, RIGHT }

final sideValues = EnumValues({
    "left": Side.LEFT,
    "right": Side.RIGHT
});

class CoatOfArms {
    final String png;
    final String svg;

    CoatOfArms({
        required this.png,
        required this.svg,
    });

    factory CoatOfArms.fromJson(String str) => CoatOfArms.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CoatOfArms.fromMap(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
    );

    Map<String, dynamic> toMap() => {
        "png": png,
        "svg": svg,
    };
}

enum Continent { NORTH_AMERICA, OCEANIA, ASIA, AFRICA, EUROPE, ANTARCTICA, SOUTH_AMERICA }

final continentValues = EnumValues({
    "Africa": Continent.AFRICA,
    "Antarctica": Continent.ANTARCTICA,
    "Asia": Continent.ASIA,
    "Europe": Continent.EUROPE,
    "North America": Continent.NORTH_AMERICA,
    "Oceania": Continent.OCEANIA,
    "South America": Continent.SOUTH_AMERICA
});

class Currencies {
    final Aed xcd;
    final Aed top;
    final Aed aud;
    final Aed xaf;
    final Aed mga;
    final Aed kwd;
    final Aed iqd;
    final Aed eur;
    final Aed npr;
    final Aed xof;
    final Aed ngn;
    final Aed wst;
    final Aed usd;
    final Aed jmd;
    final Aed mnt;
    final Aed azn;
    final Aed bgn;
    final Aed lyd;
    final Aed mad;
    final Aed byn;
    final Aed thb;
    final Aed lbp;
    final Aed brl;
    final Aed pgk;
    final Aed zwl;
    final Aed aoa;
    final Aed rwf;
    final Aed lak;
    final Aed nio;
    final Aed crc;
    final Aed tmt;
    final Aed inr;
    final Aed dzd;
    final Aed mru;
    final Aed srd;
    final Aed awg;
    final Aed kgs;
    final Aed nok;
    final Aed uyu;
    final Aed kzt;
    final Bam bam;
    final Aed bob;
    final Aed xpf;
    final Aed tjs;
    final Aed hnl;
    final Aed mvr;
    final Aed rsd;
    final Aed ang;
    final Aed kyd;
    final Aed tzs;
    final Aed ghs;
    final Aed gbp;
    final Aed imp;
    final Aed irr;
    final Aed nad;
    final Aed zar;
    final Aed bsd;
    final Aed huf;
    final Aed mdl;
    final Aed czk;
    final Aed egp;
    final Aed ils;
    final Aed jod;
    final Aed gnf;
    final Aed ttd;
    final Aed twd;
    final Aed kes;
    final Aed nzd;
    final Aed ssp;
    final Aed jep;
    final Aed tvd;
    final Aed khr;
    final Aed cuc;
    final Aed cup;
    final Aed pyg;
    final Aed mxn;
    final Aed currenciesTry;
    final Aed bzd;
    final Aed bbd;
    final Aed fkp;
    final Aed sgd;
    final Aed lkr;
    final Aed qar;
    final Aed cny;
    final Aed pen;
    final Aed ggp;
    final Aed bhd;
    final Aed zmw;
    final Aed clp;
    final Aed ron;
    final Aed mop;
    final Aed dkk;
    final Aed fok;
    final Aed bif;
    final Aed shp;
    final Aed fjd;
    final Aed gyd;
    final Aed etb;
    final Aed sll;
    final Aed php;
    final Aed mzn;
    final Aed ern;
    final Aed vuv;
    final Aed sbd;
    final Aed all;
    final Aed chf;
    final Aed rub;
    final Aed cad;
    final Aed gel;
    final Aed bdt;
    final Aed dop;
    final Aed krw;
    final Aed hkd;
    final Aed ugx;
    final Aed kid;
    final Aed gmd;
    final Aed jpy;
    final Aed ckd;
    final Aed btn;
    final Aed cve;
    final Aed bwp;
    final Aed gip;
    final Aed szl;
    final Aed uah;
    final Aed sek;
    final Aed pab;
    final Aed bmd;
    final Aed isk;
    final Aed ves;
    final Aed afn;
    final Aed bnd;
    final Aed cdf;
    final Aed kpw;
    final Aed omr;
    final Aed aed;
    final Aed vnd;
    final Aed gtq;
    final Aed idr;
    final Aed ars;
    final Aed cop;
    final Aed mkd;
    final Aed djf;
    final Aed amd;
    final Aed lsl;
    final Aed tnd;
    final Aed stn;
    final Aed sar;
    final Aed pln;
    final Aed htg;
    final Aed syp;
    final Aed pkr;
    final Aed scr;
    final Bam sdg;
    final Aed mwk;
    final Aed lrd;
    final Aed myr;
    final Aed uzs;
    final Aed mmk;
    final Aed sos;
    final Aed kmf;
    final Aed yer;
    final Aed mur;

    Currencies({
        required this.xcd,
        required this.top,
        required this.aud,
        required this.xaf,
        required this.mga,
        required this.kwd,
        required this.iqd,
        required this.eur,
        required this.npr,
        required this.xof,
        required this.ngn,
        required this.wst,
        required this.usd,
        required this.jmd,
        required this.mnt,
        required this.azn,
        required this.bgn,
        required this.lyd,
        required this.mad,
        required this.byn,
        required this.thb,
        required this.lbp,
        required this.brl,
        required this.pgk,
        required this.zwl,
        required this.aoa,
        required this.rwf,
        required this.lak,
        required this.nio,
        required this.crc,
        required this.tmt,
        required this.inr,
        required this.dzd,
        required this.mru,
        required this.srd,
        required this.awg,
        required this.kgs,
        required this.nok,
        required this.uyu,
        required this.kzt,
        required this.bam,
        required this.bob,
        required this.xpf,
        required this.tjs,
        required this.hnl,
        required this.mvr,
        required this.rsd,
        required this.ang,
        required this.kyd,
        required this.tzs,
        required this.ghs,
        required this.gbp,
        required this.imp,
        required this.irr,
        required this.nad,
        required this.zar,
        required this.bsd,
        required this.huf,
        required this.mdl,
        required this.czk,
        required this.egp,
        required this.ils,
        required this.jod,
        required this.gnf,
        required this.ttd,
        required this.twd,
        required this.kes,
        required this.nzd,
        required this.ssp,
        required this.jep,
        required this.tvd,
        required this.khr,
        required this.cuc,
        required this.cup,
        required this.pyg,
        required this.mxn,
        required this.currenciesTry,
        required this.bzd,
        required this.bbd,
        required this.fkp,
        required this.sgd,
        required this.lkr,
        required this.qar,
        required this.cny,
        required this.pen,
        required this.ggp,
        required this.bhd,
        required this.zmw,
        required this.clp,
        required this.ron,
        required this.mop,
        required this.dkk,
        required this.fok,
        required this.bif,
        required this.shp,
        required this.fjd,
        required this.gyd,
        required this.etb,
        required this.sll,
        required this.php,
        required this.mzn,
        required this.ern,
        required this.vuv,
        required this.sbd,
        required this.all,
        required this.chf,
        required this.rub,
        required this.cad,
        required this.gel,
        required this.bdt,
        required this.dop,
        required this.krw,
        required this.hkd,
        required this.ugx,
        required this.kid,
        required this.gmd,
        required this.jpy,
        required this.ckd,
        required this.btn,
        required this.cve,
        required this.bwp,
        required this.gip,
        required this.szl,
        required this.uah,
        required this.sek,
        required this.pab,
        required this.bmd,
        required this.isk,
        required this.ves,
        required this.afn,
        required this.bnd,
        required this.cdf,
        required this.kpw,
        required this.omr,
        required this.aed,
        required this.vnd,
        required this.gtq,
        required this.idr,
        required this.ars,
        required this.cop,
        required this.mkd,
        required this.djf,
        required this.amd,
        required this.lsl,
        required this.tnd,
        required this.stn,
        required this.sar,
        required this.pln,
        required this.htg,
        required this.syp,
        required this.pkr,
        required this.scr,
        required this.sdg,
        required this.mwk,
        required this.lrd,
        required this.myr,
        required this.uzs,
        required this.mmk,
        required this.sos,
        required this.kmf,
        required this.yer,
        required this.mur,
    });

    factory Currencies.fromJson(String str) => Currencies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Currencies.fromMap(Map<String, dynamic> json) => Currencies(
        xcd: Aed.fromMap(json["XCD"]),
        top: Aed.fromMap(json["TOP"]),
        aud: Aed.fromMap(json["AUD"]),
        xaf: Aed.fromMap(json["XAF"]),
        mga: Aed.fromMap(json["MGA"]),
        kwd: Aed.fromMap(json["KWD"]),
        iqd: Aed.fromMap(json["IQD"]),
        eur: Aed.fromMap(json["EUR"]),
        npr: Aed.fromMap(json["NPR"]),
        xof: Aed.fromMap(json["XOF"]),
        ngn: Aed.fromMap(json["NGN"]),
        wst: Aed.fromMap(json["WST"]),
        usd: Aed.fromMap(json["USD"]),
        jmd: Aed.fromMap(json["JMD"]),
        mnt: Aed.fromMap(json["MNT"]),
        azn: Aed.fromMap(json["AZN"]),
        bgn: Aed.fromMap(json["BGN"]),
        lyd: Aed.fromMap(json["LYD"]),
        mad: Aed.fromMap(json["MAD"]),
        byn: Aed.fromMap(json["BYN"]),
        thb: Aed.fromMap(json["THB"]),
        lbp: Aed.fromMap(json["LBP"]),
        brl: Aed.fromMap(json["BRL"]),
        pgk: Aed.fromMap(json["PGK"]),
        zwl: Aed.fromMap(json["ZWL"]),
        aoa: Aed.fromMap(json["AOA"]),
        rwf: Aed.fromMap(json["RWF"]),
        lak: Aed.fromMap(json["LAK"]),
        nio: Aed.fromMap(json["NIO"]),
        crc: Aed.fromMap(json["CRC"]),
        tmt: Aed.fromMap(json["TMT"]),
        inr: Aed.fromMap(json["INR"]),
        dzd: Aed.fromMap(json["DZD"]),
        mru: Aed.fromMap(json["MRU"]),
        srd: Aed.fromMap(json["SRD"]),
        awg: Aed.fromMap(json["AWG"]),
        kgs: Aed.fromMap(json["KGS"]),
        nok: Aed.fromMap(json["NOK"]),
        uyu: Aed.fromMap(json["UYU"]),
        kzt: Aed.fromMap(json["KZT"]),
        bam: Bam.fromMap(json["BAM"]),
        bob: Aed.fromMap(json["BOB"]),
        xpf: Aed.fromMap(json["XPF"]),
        tjs: Aed.fromMap(json["TJS"]),
        hnl: Aed.fromMap(json["HNL"]),
        mvr: Aed.fromMap(json["MVR"]),
        rsd: Aed.fromMap(json["RSD"]),
        ang: Aed.fromMap(json["ANG"]),
        kyd: Aed.fromMap(json["KYD"]),
        tzs: Aed.fromMap(json["TZS"]),
        ghs: Aed.fromMap(json["GHS"]),
        gbp: Aed.fromMap(json["GBP"]),
        imp: Aed.fromMap(json["IMP"]),
        irr: Aed.fromMap(json["IRR"]),
        nad: Aed.fromMap(json["NAD"]),
        zar: Aed.fromMap(json["ZAR"]),
        bsd: Aed.fromMap(json["BSD"]),
        huf: Aed.fromMap(json["HUF"]),
        mdl: Aed.fromMap(json["MDL"]),
        czk: Aed.fromMap(json["CZK"]),
        egp: Aed.fromMap(json["EGP"]),
        ils: Aed.fromMap(json["ILS"]),
        jod: Aed.fromMap(json["JOD"]),
        gnf: Aed.fromMap(json["GNF"]),
        ttd: Aed.fromMap(json["TTD"]),
        twd: Aed.fromMap(json["TWD"]),
        kes: Aed.fromMap(json["KES"]),
        nzd: Aed.fromMap(json["NZD"]),
        ssp: Aed.fromMap(json["SSP"]),
        jep: Aed.fromMap(json["JEP"]),
        tvd: Aed.fromMap(json["TVD"]),
        khr: Aed.fromMap(json["KHR"]),
        cuc: Aed.fromMap(json["CUC"]),
        cup: Aed.fromMap(json["CUP"]),
        pyg: Aed.fromMap(json["PYG"]),
        mxn: Aed.fromMap(json["MXN"]),
        currenciesTry: Aed.fromMap(json["TRY"]),
        bzd: Aed.fromMap(json["BZD"]),
        bbd: Aed.fromMap(json["BBD"]),
        fkp: Aed.fromMap(json["FKP"]),
        sgd: Aed.fromMap(json["SGD"]),
        lkr: Aed.fromMap(json["LKR"]),
        qar: Aed.fromMap(json["QAR"]),
        cny: Aed.fromMap(json["CNY"]),
        pen: Aed.fromMap(json["PEN"]),
        ggp: Aed.fromMap(json["GGP"]),
        bhd: Aed.fromMap(json["BHD"]),
        zmw: Aed.fromMap(json["ZMW"]),
        clp: Aed.fromMap(json["CLP"]),
        ron: Aed.fromMap(json["RON"]),
        mop: Aed.fromMap(json["MOP"]),
        dkk: Aed.fromMap(json["DKK"]),
        fok: Aed.fromMap(json["FOK"]),
        bif: Aed.fromMap(json["BIF"]),
        shp: Aed.fromMap(json["SHP"]),
        fjd: Aed.fromMap(json["FJD"]),
        gyd: Aed.fromMap(json["GYD"]),
        etb: Aed.fromMap(json["ETB"]),
        sll: Aed.fromMap(json["SLL"]),
        php: Aed.fromMap(json["PHP"]),
        mzn: Aed.fromMap(json["MZN"]),
        ern: Aed.fromMap(json["ERN"]),
        vuv: Aed.fromMap(json["VUV"]),
        sbd: Aed.fromMap(json["SBD"]),
        all: Aed.fromMap(json["ALL"]),
        chf: Aed.fromMap(json["CHF"]),
        rub: Aed.fromMap(json["RUB"]),
        cad: Aed.fromMap(json["CAD"]),
        gel: Aed.fromMap(json["GEL"]),
        bdt: Aed.fromMap(json["BDT"]),
        dop: Aed.fromMap(json["DOP"]),
        krw: Aed.fromMap(json["KRW"]),
        hkd: Aed.fromMap(json["HKD"]),
        ugx: Aed.fromMap(json["UGX"]),
        kid: Aed.fromMap(json["KID"]),
        gmd: Aed.fromMap(json["GMD"]),
        jpy: Aed.fromMap(json["JPY"]),
        ckd: Aed.fromMap(json["CKD"]),
        btn: Aed.fromMap(json["BTN"]),
        cve: Aed.fromMap(json["CVE"]),
        bwp: Aed.fromMap(json["BWP"]),
        gip: Aed.fromMap(json["GIP"]),
        szl: Aed.fromMap(json["SZL"]),
        uah: Aed.fromMap(json["UAH"]),
        sek: Aed.fromMap(json["SEK"]),
        pab: Aed.fromMap(json["PAB"]),
        bmd: Aed.fromMap(json["BMD"]),
        isk: Aed.fromMap(json["ISK"]),
        ves: Aed.fromMap(json["VES"]),
        afn: Aed.fromMap(json["AFN"]),
        bnd: Aed.fromMap(json["BND"]),
        cdf: Aed.fromMap(json["CDF"]),
        kpw: Aed.fromMap(json["KPW"]),
        omr: Aed.fromMap(json["OMR"]),
        aed: Aed.fromMap(json["AED"]),
        vnd: Aed.fromMap(json["VND"]),
        gtq: Aed.fromMap(json["GTQ"]),
        idr: Aed.fromMap(json["IDR"]),
        ars: Aed.fromMap(json["ARS"]),
        cop: Aed.fromMap(json["COP"]),
        mkd: Aed.fromMap(json["MKD"]),
        djf: Aed.fromMap(json["DJF"]),
        amd: Aed.fromMap(json["AMD"]),
        lsl: Aed.fromMap(json["LSL"]),
        tnd: Aed.fromMap(json["TND"]),
        stn: Aed.fromMap(json["STN"]),
        sar: Aed.fromMap(json["SAR"]),
        pln: Aed.fromMap(json["PLN"]),
        htg: Aed.fromMap(json["HTG"]),
        syp: Aed.fromMap(json["SYP"]),
        pkr: Aed.fromMap(json["PKR"]),
        scr: Aed.fromMap(json["SCR"]),
        sdg: Bam.fromMap(json["SDG"]),
        mwk: Aed.fromMap(json["MWK"]),
        lrd: Aed.fromMap(json["LRD"]),
        myr: Aed.fromMap(json["MYR"]),
        uzs: Aed.fromMap(json["UZS"]),
        mmk: Aed.fromMap(json["MMK"]),
        sos: Aed.fromMap(json["SOS"]),
        kmf: Aed.fromMap(json["KMF"]),
        yer: Aed.fromMap(json["YER"]),
        mur: Aed.fromMap(json["MUR"]),
    );

    Map<String, dynamic> toMap() => {
        "XCD": xcd.toMap(),
        "TOP": top.toMap(),
        "AUD": aud.toMap(),
        "XAF": xaf.toMap(),
        "MGA": mga.toMap(),
        "KWD": kwd.toMap(),
        "IQD": iqd.toMap(),
        "EUR": eur.toMap(),
        "NPR": npr.toMap(),
        "XOF": xof.toMap(),
        "NGN": ngn.toMap(),
        "WST": wst.toMap(),
        "USD": usd.toMap(),
        "JMD": jmd.toMap(),
        "MNT": mnt.toMap(),
        "AZN": azn.toMap(),
        "BGN": bgn.toMap(),
        "LYD": lyd.toMap(),
        "MAD": mad.toMap(),
        "BYN": byn.toMap(),
        "THB": thb.toMap(),
        "LBP": lbp.toMap(),
        "BRL": brl.toMap(),
        "PGK": pgk.toMap(),
        "ZWL": zwl.toMap(),
        "AOA": aoa.toMap(),
        "RWF": rwf.toMap(),
        "LAK": lak.toMap(),
        "NIO": nio.toMap(),
        "CRC": crc.toMap(),
        "TMT": tmt.toMap(),
        "INR": inr.toMap(),
        "DZD": dzd.toMap(),
        "MRU": mru.toMap(),
        "SRD": srd.toMap(),
        "AWG": awg.toMap(),
        "KGS": kgs.toMap(),
        "NOK": nok.toMap(),
        "UYU": uyu.toMap(),
        "KZT": kzt.toMap(),
        "BAM": bam.toMap(),
        "BOB": bob.toMap(),
        "XPF": xpf.toMap(),
        "TJS": tjs.toMap(),
        "HNL": hnl.toMap(),
        "MVR": mvr.toMap(),
        "RSD": rsd.toMap(),
        "ANG": ang.toMap(),
        "KYD": kyd.toMap(),
        "TZS": tzs.toMap(),
        "GHS": ghs.toMap(),
        "GBP": gbp.toMap(),
        "IMP": imp.toMap(),
        "IRR": irr.toMap(),
        "NAD": nad.toMap(),
        "ZAR": zar.toMap(),
        "BSD": bsd.toMap(),
        "HUF": huf.toMap(),
        "MDL": mdl.toMap(),
        "CZK": czk.toMap(),
        "EGP": egp.toMap(),
        "ILS": ils.toMap(),
        "JOD": jod.toMap(),
        "GNF": gnf.toMap(),
        "TTD": ttd.toMap(),
        "TWD": twd.toMap(),
        "KES": kes.toMap(),
        "NZD": nzd.toMap(),
        "SSP": ssp.toMap(),
        "JEP": jep.toMap(),
        "TVD": tvd.toMap(),
        "KHR": khr.toMap(),
        "CUC": cuc.toMap(),
        "CUP": cup.toMap(),
        "PYG": pyg.toMap(),
        "MXN": mxn.toMap(),
        "TRY": currenciesTry.toMap(),
        "BZD": bzd.toMap(),
        "BBD": bbd.toMap(),
        "FKP": fkp.toMap(),
        "SGD": sgd.toMap(),
        "LKR": lkr.toMap(),
        "QAR": qar.toMap(),
        "CNY": cny.toMap(),
        "PEN": pen.toMap(),
        "GGP": ggp.toMap(),
        "BHD": bhd.toMap(),
        "ZMW": zmw.toMap(),
        "CLP": clp.toMap(),
        "RON": ron.toMap(),
        "MOP": mop.toMap(),
        "DKK": dkk.toMap(),
        "FOK": fok.toMap(),
        "BIF": bif.toMap(),
        "SHP": shp.toMap(),
        "FJD": fjd.toMap(),
        "GYD": gyd.toMap(),
        "ETB": etb.toMap(),
        "SLL": sll.toMap(),
        "PHP": php.toMap(),
        "MZN": mzn.toMap(),
        "ERN": ern.toMap(),
        "VUV": vuv.toMap(),
        "SBD": sbd.toMap(),
        "ALL": all.toMap(),
        "CHF": chf.toMap(),
        "RUB": rub.toMap(),
        "CAD": cad.toMap(),
        "GEL": gel.toMap(),
        "BDT": bdt.toMap(),
        "DOP": dop.toMap(),
        "KRW": krw.toMap(),
        "HKD": hkd.toMap(),
        "UGX": ugx.toMap(),
        "KID": kid.toMap(),
        "GMD": gmd.toMap(),
        "JPY": jpy.toMap(),
        "CKD": ckd.toMap(),
        "BTN": btn.toMap(),
        "CVE": cve.toMap(),
        "BWP": bwp.toMap(),
        "GIP": gip.toMap(),
        "SZL": szl.toMap(),
        "UAH": uah.toMap(),
        "SEK": sek.toMap(),
        "PAB": pab.toMap(),
        "BMD": bmd.toMap(),
        "ISK": isk.toMap(),
        "VES": ves.toMap(),
        "AFN": afn.toMap(),
        "BND": bnd.toMap(),
        "CDF": cdf.toMap(),
        "KPW": kpw.toMap(),
        "OMR": omr.toMap(),
        "AED": aed.toMap(),
        "VND": vnd.toMap(),
        "GTQ": gtq.toMap(),
        "IDR": idr.toMap(),
        "ARS": ars.toMap(),
        "COP": cop.toMap(),
        "MKD": mkd.toMap(),
        "DJF": djf.toMap(),
        "AMD": amd.toMap(),
        "LSL": lsl.toMap(),
        "TND": tnd.toMap(),
        "STN": stn.toMap(),
        "SAR": sar.toMap(),
        "PLN": pln.toMap(),
        "HTG": htg.toMap(),
        "SYP": syp.toMap(),
        "PKR": pkr.toMap(),
        "SCR": scr.toMap(),
        "SDG": sdg.toMap(),
        "MWK": mwk.toMap(),
        "LRD": lrd.toMap(),
        "MYR": myr.toMap(),
        "UZS": uzs.toMap(),
        "MMK": mmk.toMap(),
        "SOS": sos.toMap(),
        "KMF": kmf.toMap(),
        "YER": yer.toMap(),
        "MUR": mur.toMap(),
    };
}

class Aed {
    final String name;
    final String symbol;

    Aed({
        required this.name,
        required this.symbol,
    });

    factory Aed.fromJson(String str) => Aed.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Aed.fromMap(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "symbol": symbol,
    };
}

class Bam {
    final String name;

    Bam({
        required this.name,
    });

    factory Bam.fromJson(String str) => Bam.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Bam.fromMap(Map<String, dynamic> json) => Bam(
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
    };
}

class Demonyms {
    final Eng eng;
    final Eng fra;

    Demonyms({
        required this.eng,
        required this.fra,
    });

    factory Demonyms.fromJson(String str) => Demonyms.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Demonyms.fromMap(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromMap(json["eng"]),
        fra: Eng.fromMap(json["fra"]),
    );

    Map<String, dynamic> toMap() => {
        "eng": eng.toMap(),
        "fra": fra.toMap(),
    };
}

class Eng {
    final String f;
    final String m;

    Eng({
        required this.f,
        required this.m,
    });

    factory Eng.fromJson(String str) => Eng.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Eng.fromMap(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
    );

    Map<String, dynamic> toMap() => {
        "f": f,
        "m": m,
    };
}

class Flags {
    final String png;
    final String svg;
    final String alt;

    Flags({
        required this.png,
        required this.svg,
        required this.alt,
    });

    factory Flags.fromJson(String str) => Flags.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

    Map<String, dynamic> toMap() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}

class Idd {
    final String root;
    final List<String> suffixes;

    Idd({
        required this.root,
        required this.suffixes,
    });

    factory Idd.fromJson(String str) => Idd.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Idd.fromMap(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: List<String>.from(json["suffixes"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
    };
}

class Maps {
    final String googleMaps;
    final String openStreetMaps;

    Maps({
        required this.googleMaps,
        required this.openStreetMaps,
    });

    factory Maps.fromJson(String str) => Maps.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Maps.fromMap(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toMap() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}

class Name {
    final String common;
    final String official;
    final Map<String, Translation> nativeName;

    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Name.fromMap(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: Map.from(json["nativeName"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromMap(v))),
    );

    Map<String, dynamic> toMap() => {
        "common": common,
        "official": official,
        "nativeName": Map.from(nativeName).map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
    };
}

class Translation {
    final String official;
    final String common;

    Translation({
        required this.official,
        required this.common,
    });

    factory Translation.fromJson(String str) => Translation.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Translation.fromMap(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toMap() => {
        "official": official,
        "common": common,
    };
}

class PostalCode {
    final String format;
    final String regex;

    PostalCode({
        required this.format,
        required this.regex,
    });

    factory PostalCode.fromJson(String str) => PostalCode.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PostalCode.fromMap(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
    );

    Map<String, dynamic> toMap() => {
        "format": format,
        "regex": regex,
    };
}

enum Region { AMERICAS, OCEANIA, AFRICA, ASIA, EUROPE, ANTARCTIC }

final regionValues = EnumValues({
    "Africa": Region.AFRICA,
    "Americas": Region.AMERICAS,
    "Antarctic": Region.ANTARCTIC,
    "Asia": Region.ASIA,
    "Europe": Region.EUROPE,
    "Oceania": Region.OCEANIA
});

enum StartOfWeek { MONDAY, SUNDAY, SATURDAY }

final startOfWeekValues = EnumValues({
    "monday": StartOfWeek.MONDAY,
    "saturday": StartOfWeek.SATURDAY,
    "sunday": StartOfWeek.SUNDAY
});

enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }

final statusValues = EnumValues({
    "officially-assigned": Status.OFFICIALLY_ASSIGNED,
    "user-assigned": Status.USER_ASSIGNED
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
