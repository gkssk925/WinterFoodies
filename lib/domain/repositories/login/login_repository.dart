import 'package:winter_foodies/data/models/param/get_token_param.dart';

abstract class LoginRepository{
  Future<String> fetch(GetTokenParam getTokenParam);
}