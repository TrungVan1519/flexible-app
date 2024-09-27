import 'package:json_annotation/json_annotation.dart';
import 'package:v_office_base/core/networking/model/base_request_model.dart';

part 'get_privilege_request_model.g.dart';

@JsonSerializable()
class GetPrivilegeRequestModel extends BaseRequestModel {
  final int menuId;
  final int deviceStatus;

  GetPrivilegeRequestModel({required this.menuId, this.deviceStatus = 1});

  Map<String, dynamic> toJson() => _$GetPrivilegeRequestModelToJson(this);

  factory GetPrivilegeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetPrivilegeRequestModelFromJson(json);
}
