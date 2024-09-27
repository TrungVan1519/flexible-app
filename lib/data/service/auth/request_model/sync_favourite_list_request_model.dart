import 'package:json_annotation/json_annotation.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';

part 'sync_favourite_list_request_model.g.dart';

@JsonSerializable()
class SyncFavouriteListRequestModel extends BaseRequestModel {
  final List<AdditionalFavouriteList>? additionalFavouriteList;

  SyncFavouriteListRequestModel({
    this.additionalFavouriteList,
    super.deviceName,
  });

  SyncFavouriteListRequestModel copyWith({
    List<AdditionalFavouriteList>? additionalFavouriteList,
    String? deviceName,
  }) =>
      SyncFavouriteListRequestModel(
        additionalFavouriteList:
            additionalFavouriteList ?? this.additionalFavouriteList,
        deviceName: deviceName ?? this.deviceName,
      );
  @override
  Map<String, dynamic> toJson() => _$SyncFavouriteListRequestModelToJson(this);

  factory SyncFavouriteListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SyncFavouriteListRequestModelFromJson(json);
}

@JsonSerializable()
class AdditionalFavouriteList {
  final int? functionType;
  final int? count;
  final String? employeeId;
  final String? orgId;
  final String? cvGroupId;

  AdditionalFavouriteList({
    this.functionType,
    this.count,
    this.employeeId,
    this.orgId,
    this.cvGroupId,
  });

  AdditionalFavouriteList copyWith({
    int? functionType,
    int? count,
    String? employeeId,
    String? orgId,
    String? cvGroupId,
  }) =>
      AdditionalFavouriteList(
        functionType: functionType ?? this.functionType,
        count: count ?? this.count,
        employeeId: employeeId ?? this.employeeId,
        orgId: orgId ?? this.orgId,
        cvGroupId: cvGroupId ?? this.cvGroupId,
      );

  @override
  Map<String, dynamic> toJson() => _$AdditionalFavouriteListToJson(this);

  factory AdditionalFavouriteList.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFavouriteListFromJson(json);
}
