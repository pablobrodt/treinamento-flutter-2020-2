import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle.model.g.dart';

@JsonSerializable(nullable: false)
class VehicleModel {
  String name;
  String id;

  VehicleModel({@required this.name, @required this.id});

  factory VehicleModel.fromJson(Map<String, dynamic> json) => _$VehicleModelFromJson(json);
}