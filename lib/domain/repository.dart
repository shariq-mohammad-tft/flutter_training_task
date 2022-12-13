import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:searching_list_with_json/data/data_model.dart';

final String url = "https://www.urdu-elibrary.com/api/Book/GetBookByCategory/0";

List<Welcome> parseUser(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  var users = list.map((e) => Welcome.fromJson(e)).toList();
  return users;
}

Future<List<Welcome>> fetchUsers() async{
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parseUser,response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
