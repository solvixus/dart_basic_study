//class 클래스명 {}
class Student {
  // Student()  // 생성자 constructor

  Student({required String name, this.age}) : _name = '$name 학생입니다';
  // 첫글자는 무조건 대문자

  String _name; //변수 / _ 언더바는 접근 제한  private 변수
  int? age; //변수 / 모두다 접근 가능  public 변수

  set name1(String value) {
    // setter
    // 메인에서 네임의 값을 변경 가능
    _name = '$value 학생';
  }

  String get name2 {
    // getter 방식 작성(1))
    print('object');
    return _name;
  }

  // String get name2 => _name // 람다방식 네임 리턴(2)

  void printInfo() {
    // 함수
    print('======');
    print('name = $_name');
    print('age = $age');
    print('======');
  }
}
