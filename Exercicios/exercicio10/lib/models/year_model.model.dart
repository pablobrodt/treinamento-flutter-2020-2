import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'year_model.model.g.dart';

@JsonSerializable(nullable: false)
class YearModel {
  String name;
  String id;

  YearModel({@required this.name, @required this.id});

  factory YearModel.fromJson(Map<String, dynamic> json) => _$YearModelFromJson(json);
}