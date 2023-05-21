class StringUtil {
  //String 유효성체크
  static bool isValidString(String? str) {
    if (str != null && str.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //String 유효성체크
  static bool isValidStringList(List<String?> strList) {
    var result = true;

    if (strList.isNotEmpty) {
      for (var str in strList) {
        if (str == null || str.isEmpty) {
          result = false;
        }
      }
    } else {
      result = false;
    }
    return result;
  }
}
