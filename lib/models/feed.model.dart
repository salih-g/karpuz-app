import 'dart:convert';

import 'package:karpuz/models/post.model.dart';

List<PostModel> feedModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String feedModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
