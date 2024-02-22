import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GlobalStore extends ChangeNotifier {
  final String freindListURL = "http://192.168.10.58:8000/api/user/friend_list";
  final String _userID = "65c87e3acbda4f6e5d3bc475";
  String get userID => _userID;
  String selectedFriendID = "";

  Map<String, String> friendList = {};

  void getHttpRequestData() async {
    final uri = Uri.parse(freindListURL);
    final response = await http.get(uri.replace(queryParameters: {
      "user_id": _userID,
    }));

    try {
      if (response.statusCode == 200) {
        final dynamic result = json.decode(response.body);
        for (var info in result) {
          friendList['${info['name']}'] = info['_id'];
        }
      } else {
        throw Exception('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Failed to request: $e');
    }
  }
}
