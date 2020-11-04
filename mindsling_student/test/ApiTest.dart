import 'package:mindsling_student/backend/student.dart';

void main() {
  Student s = new Student(
    email: "hamza@gmail.com",
    password: "12345678",
  );
  s.login();
}
