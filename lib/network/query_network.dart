class QueryNetwork {
  const QueryNetwork._();

  static Map<String, String> restcountriesapi(
          {required String apiKey, required String country}) =>
      {'country': country, 'apiKey': apiKey};
}
