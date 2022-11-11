class CountrydataModel {
  final Map<String, dynamic> data;
  late final String name;
  late final String capital;
  late final String population;
  late final String area;
  late final String nativeName;
  late final String region;
  late final String flag;

  CountrydataModel(
      {required this.data,
      required this.name,
      required this.capital,
      required this.population,
      required this.area,
      required this.nativeName,
      required this.region,
      required this.flag});

  factory CountrydataModel.fromJson(Map<String, dynamic> json) {
    return CountrydataModel(
        data: {
          'NAME': json['name'],
          'CAPITAL': json['capital'],
          'POPULATION': json['population'],
          'NATIVE NAME': json['nativeName'],
          'AREA': json['area'],
          'REGION': json['region'],
        },
        name: json['name'],
        capital: json['capital'],
        population: json['population'],
        area: json['area'],
        nativeName: json['nativeName'],
        region: json['region'],
        flag: json['flag']);
  }
}
