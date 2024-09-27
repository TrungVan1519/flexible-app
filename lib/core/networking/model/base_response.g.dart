// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponseModel<T>(
      result: BaseGenericResultModel<T>.fromJson(
          json['result'] as Map<String, dynamic>, (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$BaseResponseModelToJson<T>(
  BaseResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': instance.result.toJson(
        (value) => toJsonT(value),
      ),
    };

BaseGenericResultModel<T> _$BaseGenericResultModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseGenericResultModel<T>(
      mess: BaseMessModel.fromJson(json['mess'] as Map<String, dynamic>),
      data: fromJsonT(json['data']),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BaseGenericResultModelToJson<T>(
  BaseGenericResultModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'mess': instance.mess,
      'data': toJsonT(instance.data),
      'timestamp': instance.timestamp,
    };

BaseMessModel _$BaseMessModelFromJson(Map<String, dynamic> json) =>
    BaseMessModel(
      errorCode: (json['errorCode'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$BaseMessModelToJson(BaseMessModel instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
