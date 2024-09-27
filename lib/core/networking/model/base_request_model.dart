import 'package:json_annotation/json_annotation.dart';

part 'base_request_model.g.dart';

@JsonSerializable()
class BaseRequestModel {
  final String? deviceName;
  final bool isSecurity;
  final String? data;

  BaseRequestModel(
      {this.deviceName = "Android 14 VOffice 3.6.9",
      this.isSecurity = false,
      this.data});

  Map<String, dynamic> toJson() => _$BaseRequestModelToJson(this);

  factory BaseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BaseRequestModelFromJson(json);
}
