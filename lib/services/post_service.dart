// ignore_for_file: non_constant_identifier_names
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:karpuz/models/feed.model.dart';

class PostService {
  static Future<dynamic> getPosts() async {
    final url = Uri.parse('https://karpuz.herokuapp.com/v1/content/paginated');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return feedModelFromJson(response.body.toString());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
