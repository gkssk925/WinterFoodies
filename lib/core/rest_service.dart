import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RestService {
  static final RestService _singleton = RestService._internal();

  factory RestService() {
    return _singleton;
  }

  RestService._internal();

  http.Client getClient() {
    return http.Client();
  }

  Future<Iterable> get(String url) async {
    final response = await getClient().get(Uri.parse(url));
    Iterable jsonResponse = jsonDecode(response.body);

    return jsonResponse;
  }
}
