class Hero extends Person {
  // 자식클래스 만들기   // 자식은 부모 클래스의 함수 를 그대로 사용가능
  // extends를 사용하여 부모클래스 Person을 상속받아 사용할 수 있다.
  Hero(String name) : super(name: name); //super는 부모를 뜻함

  void fly() {
    print('$name, 날다');
  }

  @override // 함수를 재정의 한다
  void walk() {
    super.walk(); // 부모클래스
    print('$name, 뛴다');
  }
}

class Person {
  Person({required this.name}); // 네임드 파라메틱으로 변경해주면?

  String? name;

  void speak() {
    print('안녕 나는 $name 입니다');
  }

  void walk() {
    print('$name는 걷습니다');
  }
}
