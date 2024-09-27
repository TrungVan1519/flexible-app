import 'networkEnv.dart';

class ProEnv implements NetworkEnv {
  @override
  String get baseUrl => 'http://192.168.1.71:8010';

  @override
  String get authUrl => "http://192.168.1.71:8010/ServiceMobile_V02/resources";

  @override
  String get apiUrl => "$baseUrl/ServiceMobile_V02/resources";
}
