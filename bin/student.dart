import 'person1.dart';

class Student extends Person {
  Student(String name) : super(name: name);

  @override
  void printInfo() {
    print('-----printInfo--');
    print(name);
    // age = 30;
    print(age);
    print('--------');
  }
}
