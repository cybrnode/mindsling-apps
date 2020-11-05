import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;
import 'package:mindsling_student/sharedPreferences.dart' as sp;

class Student {
  String name;
  String email;
  String className;
  String school;
  String rollNumber;
  String password;
  String profilePicture;
  String filePath;

  Student({
    // this.profilePicture,
    this.name,
    this.email,
    this.className,
    this.school,
    this.rollNumber,
    this.password,
  });

  Future<String> login() async {
    http.Response response = await http.post(
      '${utils.HOST_NAME}${utils.STUDENT_SERVICE}/login',
      headers: utils.HEADERS,
      body: jsonEncode({
        "email": this.email,
        'password': this.password,
      }),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return Future.error(jsonDecode(response.body)["message"]);
    }
  }

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
