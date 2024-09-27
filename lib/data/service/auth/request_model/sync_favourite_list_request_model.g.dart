// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_favourite_list_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncFavouriteListRequestModel _$SyncFavouriteListRequestModelFromJson(
        Map<String, dynamic> json) =>
    SyncFavouriteListRequestModel(
      additionalFavouriteList:
          (json['additionalFavouriteList'] as List<dynamic>?)
              ?.map((e) =>
                  AdditionalFavouriteList.fromJson(e as Map<String, dynamic>))
              .toList(),
      deviceName: json['deviceName'] as String? ?? "Android 14 VOffice 3.6.9",
    );

Map<String, dynamic> _$SyncFavouriteListRequestModelToJson(
        SyncFavouriteListRequestModel instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'additionalFavouriteList': instance.additionalFavouriteList,
    };

AdditionalFavouriteList _$AdditionalFavouriteListFromJson(
        Map<String, dynamic> json) =>
    AdditionalFavouriteList(
      functionType: (json['functionType'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      employeeId: json['employeeId'] as String?,
      orgId: json['orgId'] as String?,
      cvGroupId: json['cvGroupId'] as String?,
    );

Map<String, dynamic> _$AdditionalFavouriteListToJson(
        AdditionalFavouriteList instance) =>
    <String, dynamic>{
      'functionType': instance.functionType,
      'count': instance.count,
      'employeeId': instance.employeeId,
      'orgId': instance.orgId,
      'cvGroupId': instance.cvGroupId,
    };
