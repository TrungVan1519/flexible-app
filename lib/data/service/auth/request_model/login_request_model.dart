import 'package:json_annotation/json_annotation.dart';

import 'package:v_office_base/core/networking/model/base_request_model.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel extends BaseRequestModel {
  final String password;
  final String username;

  LoginRequestModel(
      {required this.username, required this.password, super.deviceName});

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
