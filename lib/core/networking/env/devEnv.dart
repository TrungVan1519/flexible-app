import 'networkEnv.dart';

class DevEnv implements NetworkEnv {
  @override
  String get authUrl => "http://192.168.1.71:8082";

  @override
  String get apiUrl => "$baseUrl/ServiceMobile_V02/resources";

  @override
  String get baseUrl => "http://192.168.1.71:8083";
}
