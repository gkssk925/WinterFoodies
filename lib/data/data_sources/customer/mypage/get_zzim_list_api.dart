import 'dart:convert';

import 'package:winter_foodies/core/utils/string_util.dart';
import 'package:http/http.dart' as http;
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/core/utils/pref_util.dart';

class GetZzimListApi {
  GetZzimListApi();

  Future<Map<dynamic, dynamic>?> fetch() async {
    try {
      final response = await http.get(
        Uri.parse('${Strings.baseUrl}/api/mypage/like'),
        headers: {
          'Authorization': 'Bearer ${PrefUtil.getString(Strings.PREF_TOKEN)}',
          'Content-Type': 'application/json'
        },
      );
      var result = Map.from(jsonDecode(utf8.decode(response.bodyBytes)));

      return result;
    } catch (e) {
      StringUtil.printError(e, 'get_zzim_list_api');
    }
    return null;
  }
}
