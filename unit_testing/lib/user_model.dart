import 'dart:convert';

class User {
  final String name, website, email;
  final int id;

  User({
    required this.name,
    required this.id,
    required this.website,
    required this.email,
  });

  User copyWith({
    String? name,
    id,
    website,
    email,
  }) {
    return User(
      name: name ?? this.name,
      id: id ?? this.id,
      website: website ?? this.website,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({"email": email});
    result.addAll({"id": id});
    result.addAll({"name": name});
    result.addAll({"website": website});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map["name"] ?? "",
      id: map["id"] ?? 0,
      website: map["website"] ?? "",
      email: map["email"] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
