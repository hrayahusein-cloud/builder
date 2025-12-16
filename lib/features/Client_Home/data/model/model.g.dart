// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) =>
    Model(name: json['name'] as String, id: (json['id'] as num).toInt());

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
};
