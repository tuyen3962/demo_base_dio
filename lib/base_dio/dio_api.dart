import 'package:demo_dio/base_dio/base_dio.dart';
import 'package:demo_dio/base_dio/user.dart';

class DioApi extends BaseDio {
  Future<User?> getUser() => getData<User>('/');
}
