import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:winter_foodies/core/utils/pref_util.dart';
import 'package:winter_foodies/core/utils/string_util.dart';
import 'package:winter_foodies/data/models/param/get_token_param.dart';
import 'package:winter_foodies/constants/strings.dart';

class GetTokenApi {
  GetTokenApi();

  Future<Map<dynamic, dynamic>?> fetch(GetTokenParam getTokenParam) async {
    final Map<String, String> requestBody = {
      'email': getTokenParam.email,
      'username': getTokenParam.username,
      'password': getTokenParam.password,
    };

    try {
      final response = await http.post(
        Uri.parse('http://3.92.83.20:8080/api/login'),
        headers: {
          //   'Authorization': basicAuth,
          'Content-Type': 'application/json'
        },
        body: jsonEncode(requestBody),
      );

      var result = Map.from(jsonDecode(response.body));
      var token = result['token'];

      if(StringUtil.isValidString(token)){
        PrefUtil.setString(Strings.PREF_TOKEN, token);
      }

      return result;
    } catch (e) {
      StringUtil.printError(e, 'get_token_api');
    }
  }
}
