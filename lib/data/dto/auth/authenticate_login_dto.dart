import 'package:json_annotation/json_annotation.dart';

part 'authenticate_login_dto.g.dart';


@JsonSerializable()
class AuthenticateLoginDto {
  final String? token;
  final String? refreshToken;

  AuthenticateLoginDto({
    required this.token,
    required this.refreshToken,
  });

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticateLoginDtoToJson(this);

  factory AuthenticateLoginDto.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticateLoginDtoFromJson(json);
}
