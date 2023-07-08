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

  //Error 출력
  static void printError(dynamic error, String fileName) {
    const maxLength = 40; // 파일 이름, 에러 메시지 최대 길이
    fileName = fileName.length > maxLength
        ? "${fileName.substring(0, maxLength - 3)}..." // 최대 길이를 초과할 경우 ...으로 대체
        : fileName.padRight(maxLength); // 최대 길이보다 짧을 경우 오른쪽 정렬 후 공백으로 채움

    String errorMessage = '''
  ╔══════════════════════════════════╗
    ${fileName}  
  ╟──────────────────────────────────╢
  ║  ${error.runtimeType}: ${error.toString()}  ║
  ╚══════════════════════════════════╝
  ''';
    print(errorMessage);
  }
}
