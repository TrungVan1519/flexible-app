import 'package:v_office_base/data/dto/auth/authenticate_login_dto.dart';

class AuthenticateLoginEntity {
  final String? token;
  final String? refreshToken;

  AuthenticateLoginEntity({this.refreshToken, this.token});

  AuthenticateLoginEntity copyWith({
    String? token,
    String? refreshToken,
  }) {
    return AuthenticateLoginEntity(
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }
}

extension AuthenticateLoginEntityEx on AuthenticateLoginDto {
  AuthenticateLoginEntity get toAuthenticateLoginEntity =>
      AuthenticateLoginEntity(refreshToken: refreshToken, token: token);
}
