class UserModel {
  User? user;
  Tokens? tokens;

  UserModel({this.user, this.tokens});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (tokens != null) {
      data['tokens'] = tokens!.toJson();
    }
    return data;
  }
}

class User {
  String? username;
  String? role;
  String? id;
  String? createdAt;
  String? updatedAt;

  User({this.username, this.role, this.id, this.createdAt, this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    role = json['role'];
    id = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['role'] = role;
    data['_id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Tokens {
  String? token;

  Tokens({this.token});

  Tokens.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    return data;
  }
}
