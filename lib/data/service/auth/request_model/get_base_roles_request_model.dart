import 'package:json_annotation/json_annotation.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';

part 'get_base_roles_request_model.g.dart';

@JsonSerializable()
class GetBaseRolesRequestModel extends BaseRequestModel {
  GetBaseRolesRequestModel({super.deviceName});

  Map<String, dynamic> toJson() => _$GetBaseRolesRequestModelToJson(this);

  factory GetBaseRolesRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetBaseRolesRequestModelFromJson(json);
}
