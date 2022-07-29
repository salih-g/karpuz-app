import 'package:flutter/foundation.dart';
import 'package:karpuz/models/post.model.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<PostModel>> getPosts() async {
    final url = Uri.parse('http://10.0.2.2:8081/v1/content/paginated');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return postsModelFromJson(response.body.toString());
      }
      return <PostModel>[];
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return <PostModel>[];
    }
  }
}
