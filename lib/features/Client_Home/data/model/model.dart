
import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.g.dart';
@JsonSerializable()

class Model {
  final String name;
  final int id;

  Model({required this.name, required this.id});
  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
  Map<String, dynamic> toJson() => _$ModelToJson(this);
}