class Person {
  Person({required this.name}) {
    _age = 24;
  }

  String? name;
  int? _age; // _프라이빗 변수로 변경
  static final String address = '우리집'; // 전역변수
  set age(int? value) {
    _age = value;
  }

  int? get age => _age! + 1;

  void printname() {
    print(name);
  }

  static void printIn() {
    print('--------');
    print(address);
    print('--------');
  }

  void printInfo() {
    print('이름은 = $name입니다');
    print('나이는 = $_age입니다');
  }
}
