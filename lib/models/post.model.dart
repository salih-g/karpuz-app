import 'dart:convert';

List<PostModel> postsModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postsModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    required this.id,
    required this.post,
    required this.username,
    required this.comments,
    required this.likes,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;
  String post;
  String username;
  List<Comment> comments;
  List<String> likes;
  DateTime createdAt;
  DateTime updatedAt;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["_id"],
        post: json["post"],
        username: json["username"],
        comments: List<Comment>.from(
            json["comments"].map((x) => Comment.fromJson(x))),
        likes: List<String>.from(json["likes"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "post": post,
        "username": username,
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "likes": List<dynamic>.from(likes.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Comment {
  Comment({
    required this.id,
    required this.comment,
    required this.contentId,
    required this.username,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;
  String comment;
  String contentId;
  String username;
  DateTime createdAt;
  DateTime updatedAt;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["_id"],
        comment: json["comment"],
        contentId: json["contentId"],
        username: json["username"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "comment": comment,
        "contentId": contentId,
        "username": username,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
