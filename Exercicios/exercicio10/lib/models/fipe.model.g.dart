// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fipe.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fipe _$FipeFromJson(Map<String, dynamic> json) {
  return Fipe(
    id: json['id'] as String,
    yearModel: json['ano_modelo'] as String,
    brand: json['marca'] as String,
    name: json['name'] as String,
    price: json['preco'] as String,
    fuel: json['combustivel'] as String,
    referenceMonth: json['referencia'] as String,
  );
}

Map<String, dynamic> _$FipeToJson(Fipe instance) => <String, dynamic>{
      'id': instance.id,
      'ano_modelo': instance.yearModel,
      'marca': instance.brand,
      'name': instance.name,
      'preco': instance.price,
      'combustivel': instance.fuel,
      'referencia': instance.referenceMonth,
    };
