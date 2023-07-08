import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:winter_foodies/core/utils/pref_util.dart';
import 'package:winter_foodies/core/utils/string_util.dart';

import 'package:winter_foodies/constants/strings.dart';

class GetMyPageInfoApi {
  GetMyPageInfoApi();

  Future<Map<dynamic, dynamic>?> fetch() async {
    try {
      final response = await http.get(
        Uri.parse('${Strings.baseUrl}/api/mypage/info'),
        headers: {
          'Authorization': 'Bearer ${PrefUtil.getString(Strings.PREF_TOKEN)}',
          'Content-Type': 'application/json'
        },
      );

      var result = Map.from(jsonDecode(utf8.decode(response.bodyBytes)));

      return result;
    } catch (e) {
      StringUtil.printError(e, 'get_mypage_info_api');
    }
    return null;
  }
}
