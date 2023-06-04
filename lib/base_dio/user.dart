import 'package:demo_dio/base_dio/base_model.dart';

class User extends Type {
  final String name;

  User({this.name = ''});

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: (json['name'] as String?) ?? '',
      );

  @override
  String toString() {
    return 'Users : $name';
  }
}
