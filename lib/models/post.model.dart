class PostModel {
  String? id;
  String? post;
  String? username;
  List<Comments>? comments;
  List<String>? likes;
  String? createdAt;
  String? updatedAt;

  PostModel(
      {this.id,
      this.post,
      this.username,
      this.comments,
      this.likes,
      this.createdAt,
      this.updatedAt});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    post = json['post'];
    username = json['username'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
    likes = json['likes'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['post'] = post;
    data['username'] = username;
    if (comments != null) {
      data['comments'] = comments!.map((v) => v.toJson()).toList();
    }
    data['likes'] = likes;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Comments {
  String? id;
  String? comment;
  String? contentId;
  String? username;
  String? createdAt;
  String? updatedAt;

  Comments(
      {this.id,
      this.comment,
      this.contentId,
      this.username,
      this.createdAt,
      this.updatedAt});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    comment = json['comment'];
    contentId = json['contentId'];
    username = json['username'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['comment'] = comment;
    data['contentId'] = contentId;
    data['username'] = username;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
