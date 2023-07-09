import 'package:freezed_annotation/freezed_annotation.dart';

part 'mypage_zzim_model.freezed.dart';

part 'mypage_zzim_model.g.dart';

///Api 호출 로딩상태
@freezed
class MyPageZzimModel with _$MyPageZzimModel {
  factory MyPageZzimModel(
          String? name, String? basicAddress, double? avergeRating) =
      _MyPageZzimModel;

  factory MyPageZzimModel.fromJson(Map<String, dynamic> json) =>
      _$MyPageZzimModelFromJson(json);
}
