import 'package:mindsling_student/backend/student.dart';

void main() {
  Student s = new Student(
    name: "Hamza",
    email: "hamza@gmail.com",
    className: "8th",
    school: "5f8058a290ee226e080eece5",
    rollNumber: "18",
    password: "12345678",
  );
  s.register();
}
