// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mypage_zzim_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyPageZzimModel _$$_MyPageZzimModelFromJson(Map<String, dynamic> json) =>
    _$_MyPageZzimModel(
      json['name'] as String?,
      json['basicAddress'] as String?,
      (json['avergeRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MyPageZzimModelToJson(_$_MyPageZzimModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'basicAddress': instance.basicAddress,
      'avergeRating': instance.avergeRating,
    };
