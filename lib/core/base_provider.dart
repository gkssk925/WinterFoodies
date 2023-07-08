import 'package:flutter/material.dart';
import 'package:winter_foodies/data/models/param/api_loading_state.dart';

///Base Provider
///api수행을 하는 Provider들의 부모 Provider
///api수행을 하는 Provider들의 loadingState와 errorMsg공통화를 위해 생성
class BaseProvider with ChangeNotifier {
  ApiLoadingState _loadingState = ApiLoadingState(false);
  String _errorMsg ='';
  bool _canShowErrorDialog = true;

  ApiLoadingState get loadingState => _loadingState;
  String get errorMsg => _errorMsg;
  bool get canShowErrorDialog => _canShowErrorDialog;

  void setLoadingState(bool isLoading) {
    _loadingState = loadingState.copyWith(isLoading: isLoading);
    notifyListeners();
  }

  void setCanShowErrorDialog(bool canShowErrorDialog){
     _canShowErrorDialog = canShowErrorDialog;
  }

  void setErrorMsg(String errorMsg){
     _errorMsg = errorMsg;
    notifyListeners();
  }

  void clearErrorMsg(){
    _errorMsg = '';
      notifyListeners();
  }
}
