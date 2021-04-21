import 'dart:convert';

import 'package:test_task/models/users.dart';
import 'package:http/http.dart' as http;

class UserFetch {
  static var client = http.Client();
  static String url = 'https://rickandmortyapi.com/api/character';
  static Future getUsers() async {
    try {
      final response = await client.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return Users.fromJson(json.decode(response.body));
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
