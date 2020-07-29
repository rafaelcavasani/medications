// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationModel _$MedicationModelFromJson(Map<String, dynamic> json) {
  return MedicationModel(
    name: json['name'] as String,
    typeDescription: json['typeDescription'] as String,
    coverage: json['coverage'] as String,
    dosage: json['dosage'] as String,
    gpi2: json['gpi2'] as String,
    gpi4: json['gpi4'] as String,
    gpi12: json['gpi12'] as String,
    gpi14: json['gpi14'] as String,
    strength: (json['strength'] as num)?.toDouble(),
    strengthUnit: json['strengthUnit'] as String,
    type: json['type'] as String,
    otcRxIndicator: json['otcRxIndicator'] as String,
  );
}

Map<String, dynamic> _$MedicationModelToJson(MedicationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'typeDescription': instance.typeDescription,
      'coverage': instance.coverage,
      'dosage': instance.dosage,
      'gpi2': instance.gpi2,
      'gpi4': instance.gpi4,
      'gpi12': instance.gpi12,
      'gpi14': instance.gpi14,
      'strength': instance.strength,
      'strengthUnit': instance.strengthUnit,
      'type': instance.type,
      'otcRxIndicator': instance.otcRxIndicator,
    };
