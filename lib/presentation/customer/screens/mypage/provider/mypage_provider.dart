import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/core/base_provider.dart';
import 'package:winter_foodies/domain/entities/mypage_info.dart';
import 'package:winter_foodies/domain/usecases/customer/mypage/get_mypage_info_use_case.dart';

class MyPageProvider extends BaseProvider {
  MyPageInfo _myPageInfo = MyPageInfo();

  MyPageInfo get myPageInfo => _myPageInfo;

  //마이페이지 내 정보
  Future<void> getMyPageInfo() async {
    setLoadingState(true);
    notifyListeners();

    var mapResultList = await GetMyPageInfoUserCase().call();

    try {
      if (mapResultList?['email'] != null) {
        if (mapResultList?['username'] != null) {
          _myPageInfo.email = mapResultList?['email'];
          _myPageInfo.username = mapResultList?['username'];
        } else {
          setErrorMsg(mapResultList?[Strings.ERROR_MSG]);
        }
      } else {
        setErrorMsg(mapResultList?[Strings.ERROR_MSG]);
      }
    } catch (e) {
      setErrorMsg(mapResultList?[Strings.ERROR_MSG]);
    }

    setLoadingState(false);

    notifyListeners();
  }
}
