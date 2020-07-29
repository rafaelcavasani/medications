import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'medication_model.g.dart';

@JsonSerializable()
class MedicationModel {
  String name;
  String typeDescription;
  String coverage;
  String dosage;
  String gpi2;
  String gpi4;
  String gpi12;
  String gpi14;
  double strength;
  String strengthUnit;
  String type;
  String otcRxIndicator;

  MedicationModel({
    @required this.name,
    this.typeDescription,
    this.coverage,
    this.dosage,
    this.gpi2,
    this.gpi4,
    this.gpi12,
    this.gpi14,
    this.strength,
    this.strengthUnit,
    this.type,
    this.otcRxIndicator,
  });

  factory MedicationModel.fromJson(Map<String, dynamic> json) =>
      _$MedicationModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicationModelToJson(this);

  bool operator ==(other) => other is MedicationModel && other.name == name;

  @override
  int get hashCode => super.hashCode ^ name.hashCode;
}
