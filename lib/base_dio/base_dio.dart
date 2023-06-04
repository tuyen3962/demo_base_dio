import 'package:demo_dio/base_dio/user.dart';
import 'package:dio/dio.dart';

abstract class BaseDio {
  static String hostName = 'http://localhost:3000';

  final dio = Dio();

  Map<Type, Type Function(Map<String, dynamic> json)> temp = {
    User: User.fromJson
  };

  T? tranformModel<T extends Type>(T type, dynamic json) {
    final typeFunc = temp[type];
    if (typeFunc != null) {
      return typeFunc(json as Map<String, dynamic>) as T;
    } else {
      return null;
    }
  }

  Future<T?> getData<T extends Type>(
    String api, {
    Object? data,
    Map<String, dynamic>? queryParam,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      hostName + api,
      data: data,
      queryParameters: queryParam,
    );

    if (response.statusCode == 200 && response.data!['response'] == 'oke') {
      return tranformModel(T, response.data!['data']) as T;
    } else {
      throw Exception();
    }
  }
}
