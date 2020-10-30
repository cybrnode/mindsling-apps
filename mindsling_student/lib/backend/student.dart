import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;

class Student {
  String name;
  String email;
  String className;
  String school;
  String rollNumber;
  String password;
  String profilePicture;

  Student({
    this.name,
    this.email,
    this.className,
    this.school,
    this.rollNumber,
    this.password,
  });

  Future<String> register() async {
    http.Response response = await http.post(
      '${utils.HOST_NAME}${utils.STUDENT_SERVICE}/register',
      headers: utils.HEADERS,
      body: jsonEncode({
        'name': this.name,
        "email": this.email,
        'class_name': this.className,
        "school": this.school,
        'roll_no': this.rollNumber,
        'password': this.password,
      }),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception(response.body);
    }
  }
}
