import '../class/student.dart';

void main() {
  print('class 공부');
// instance 인스턴스 : object(객채)셍성 클래스 안에 있는 변수와 함수를 사용하기 위해 필요
  Student girlStudent = Student(name: '오태훈', age: 30);
  girlStudent.printInfo();

  girlStudent.name1 = 'taehoon';
  print(girlStudent.name2);
  girlStudent.age = 3;
  girlStudent.printInfo();
}
