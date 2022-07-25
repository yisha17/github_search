import 'dart:convert';

import 'package:github_search/models/user.dart';
import 'package:github_search/constant/strings.dart';
import 'package:http/http.dart' as http;


class UserRepository {
  
  Future<UserModel?> getUsers(String username) async {
    final response = await http.get(Uri.http(baseUrl,username));

    if (response.statusCode == 200) {
      try {
        final user = UserModel.fromJSON(json.decode(response.body));

        return user;
      } catch (e) {
        throw Exception('cant get user');
      }
    }
    else if(response.statusCode == 401 || response.statusCode == 403){
      throw Exception('forbidden');

    } else {
      throw Exception('error');
    }
  }
}
