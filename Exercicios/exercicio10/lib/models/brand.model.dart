import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand.model.g.dart';

@JsonSerializable(nullable: false)
class Brand {
  final int id;

  @JsonKey(name: 'fipe_name')
  final String name;

  Brand({
    @required this.id,
    @required this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
