import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/core/base_provider.dart';
import 'package:winter_foodies/domain/entities/mypage_config.dart';
import 'package:winter_foodies/domain/entities/mypage_info.dart';
import 'package:winter_foodies/domain/usecases/customer/mypage/get_mypage_config_use_case.dart';
import 'package:winter_foodies/domain/usecases/customer/mypage/get_mypage_info_use_case.dart';

class MyPageProvider extends BaseProvider {
  MyPageInfo _myPageInfo = MyPageInfo();
  MyPageConfig _myPageConfig = MyPageConfig();

  MyPageInfo get myPageInfo => _myPageInfo;
  MyPageConfig get myPageConfig => _myPageConfig;

  //마이페이지 내 정보
  Future<void> getMyPageInfo() async {
    setLoadingState(true);
    notifyListeners();

    var mapResultList = await GetMyPageInfoUseCase().call();

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

  //마이페이지 환경설정 및 공지사항
  Future<void> getMyPageConfig() async {
    setLoadingState(true);
    notifyListeners();

    var mapResultList = await GetMyPageConfigUseCase().call();

    try {
      if (mapResultList?['config'] != null) {
        if (mapResultList?['announce'] != null) {
          _myPageConfig.config = mapResultList?['config'];
          _myPageConfig.announce = mapResultList?['announce'];
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

  void clearConfigInfo(){
    _myPageConfig = MyPageConfig();
  }
}
