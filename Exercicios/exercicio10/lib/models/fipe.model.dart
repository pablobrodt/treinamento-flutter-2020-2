import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fipe.model.g.dart';

@JsonSerializable(nullable: false)
class Fipe {
  final String id;
  @JsonKey(name: 'ano_modelo')
  final String yearModel;
  @JsonKey(name: 'marca')
  final String brand;
  final String name;
  @JsonKey(name: 'preco')
  final String price;
  @JsonKey(name: 'combustivel')
  final String fuel;
  @JsonKey(name: 'referencia')
  final String referenceMonth;

  Fipe({
    @required this.id,
    @required this.yearModel,
    @required this.brand,
    @required this.name,
    @required this.price,
    @required this.fuel,
    @required this.referenceMonth,
  });

  factory Fipe.fromJson(Map<String, dynamic> json) => _$FipeFromJson(json);
}