// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return Brand(
    id: json['id'] as int,
    name: json['fipe_name'] as String,
  );
}

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'fipe_name': instance.name,
    };
