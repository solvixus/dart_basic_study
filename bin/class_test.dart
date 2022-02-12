import 'dart:io';

import 'person1.dart';
import 'student.dart';

void main() {
  // print(Person.address);
  // Person.printIn();
  Student student = Student('학생');
  student.printInfo();
  Person person = Student('학생2');
  person.age = 36;
  person.printInfo();
}

// void test() {
//   Person person = Person(name: '보라');
//   print(person.address);
//   print(person.name);
//   person.name = 'teahoon';
//   person.printname();
//   person.age = 30;
//   print(person.age);
//   person.printInfo();
// }
