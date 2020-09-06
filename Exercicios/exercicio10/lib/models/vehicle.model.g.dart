// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return VehicleModel(
    name: json['name'] as String,
    id: json['id'],
  );
}

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
