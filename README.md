# demo_base_dio
In this repo, i will give you the simple base dio to handle request with dynamic model class. You just create model you want and insert it into the map.

```
Map<Type, Type Function(Map<String, dynamic> json)> temp = {
    User: User.fromJson
  };
```

In this map, you can insert any model class (The data from server to convert to model) but you have to remember one thing that your model class have to extends from Type.

```
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
```

I hope this will you a lot.
You can direct to my blog to understand the detail about my base dio and how it work.

Thank you.