import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T> {
  final BaseGenericResultModel<T> result;

  BaseResponseModel({required this.result});

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseResponseModelToJson<T>(this, toJsonT);

  factory BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseModelFromJson<T>(json, fromJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class BaseGenericResultModel<T> {
  final BaseMessModel mess;
  final T data;
  final int? timestamp;

  BaseGenericResultModel(
      {required this.mess, required this.data, this.timestamp});

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseGenericResultModelToJson(this, toJsonT);

  factory BaseGenericResultModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseGenericResultModelFromJson(json, fromJsonT);
}

@JsonSerializable()
class BaseMessModel {
  final int errorCode;
  final String message;

  BaseMessModel({required this.errorCode, required this.message});

  Map<String, dynamic> toJson() => _$BaseMessModelToJson(this);

  factory BaseMessModel.fromJson(Map<String, dynamic> json) =>
      _$BaseMessModelFromJson(json);
}
