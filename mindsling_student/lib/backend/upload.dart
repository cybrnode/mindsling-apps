import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;

class Upload {
  String fileName;
  String filePath;

  static void pictureUpload(String fileName) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('${utils.HOST_NAME}${utils.UPLOAD_SERVICE}'));
    var multipart = await http.MultipartFile.fromPath("img", fileName);
    if (multipart != null) request.files.add(multipart);

    await request.send();
  }
}
