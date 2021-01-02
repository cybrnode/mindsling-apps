import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;

class Upload {
  String fileName;
  String filePath;

  static Future<String> pictureUpload(String fileName) async {
    http.MultipartRequest request = http.MultipartRequest(
      'POST',
      Uri.parse('${utils.HOST_NAME}${utils.UPLOAD_SERVICE}'),
    );

    http.MultipartFile multipart =
        await http.MultipartFile.fromPath("file", fileName);

    if (multipart != null) request.files.add(multipart);

    http.StreamedResponse instance = await request.send();
    String response = await instance.stream.bytesToString();
    return jsonDecode(response)["url"];
    // instance.stream.toStringStream().listen((event) {
    //   imageUrl = event;
    // }, onDone: () {
    //   print("onDone");
    // }, onError: (error) {
    //   print("onError $error");
    // }, cancelOnError: false);
  }
}
