import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;
import 'dart:ui';

class School {
  final String id;
  final String name;

  School({this.id, this.name});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      id: json['_id'],
      name: json['name'],
    );
  }

  static Future<List> fetchSchool() async {
    final response =
        await http.get('${utils.HOST_NAME}${utils.SCHOOL_SERVICE}');

    if (response.statusCode == 200 && response.body != null) {
      return jsonDecode(response.body);
    } else {
      return Future.error(jsonDecode(response.body)["message"]);
    }
  }
}
