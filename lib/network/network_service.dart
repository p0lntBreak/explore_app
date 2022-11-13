import 'package:http/http.dart' as http;
import 'network_helper.dart';

enum RequestType { get, put, post }

class NetworkService {
  const NetworkService._();

  static Map<String, String> _getHeaders() =>
      {'Content-Type': 'application/json'};

  static Future<http.Response>? _createRequest({
    required RequestType requestType,
    required Uri uri,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) {
    if (requestType == RequestType.get) {
      return http.get(uri, headers: headers);
    }
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String url,
    Map<String, String>? queryParam,
    Map<String, dynamic>? body,
  }) async {
    try {
      final _headers = _getHeaders();
      final _url = NetworkHelper.concatUrlQP(url, queryParam);

      final response = await _createRequest(
          requestType: requestType,
          uri: Uri.parse(url),
          headers: _headers,
          body: body);

      return response;
    } catch (e) {
      print('Error - $e');
      return null;
    }
  }
}
