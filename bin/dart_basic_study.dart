import 'dart:collection';

import 'dart:math';

void main() {}

void basic21() {
// // 반환타입 함수명(매개변수){
// // 실행문
// // }

// void main() {
//   // String mag = funtionType();
//   // print(mag);
//   int sum = plus(2, 3);
//   print(sum);
//   plus1(6, 5);
// }

// int plus(int a, int b) {
//   return a + b;
// }

// void plus1(int a, int b) {
//   print('$a+$b');
// }

// String funtionType() {
//   print('1');
//   print('2');
//   return '완료';
// }
}

void basic20() {
  forexbasic19(); // 만들어 놓은 함수를 호출해서 사용 방법 함수의 {-->} 실행됨
  basic2();
}

void forexbasic19() {
  final scoreList = [42, 35, 24, 55, 68, 54];
//간단한 for 문
  for (var score in scoreList) {
    // 스코어 리스트의 각 각을 확인
    //print(score);
    if (score >= 60) {
      print('$score 점으로 합격 입니다.');
    } else {
      print('$score 점으로 불합격 입니다.');
    }
  }

  //for문 정석
  print('========================');
  for (var i = 0; i < scoreList.length; i++) {
    if (scoreList[i] >= 60) {
      print('${i + 1}번째 학생은 ${scoreList[i]}점으로 합격 입니다.');
    } else {
      print('${i + 1}번째 학생은 ${scoreList[i]}점으로 불합격 입니다.');
    }
  }
}

void forbasic18() {
  // 반복문 - for
  final count = 3;
  for (var i = 0; i < count; i++) {
    print(i);
  }
}

void whilebasic17() {
// 반복문
  // while(반복 횟수 중요X), for(반복횟수 중요O)
// 반복 횟수가 중요한가?

// while (조건문이 참일경우) {
//   실행문을 반복합니다.
// }
  int weight = 65;
  int count = 0;
  while (weight > 50) {
    print('총 몸무게:$weight 입니다');
    count++;
    print('줄넘기 횟수: $count');

    var removeWeight = Random().nextInt(2); // nextint는 0부터 2까지 랜덤하게
    weight = weight - removeWeight;
    print('감량 무게 : $removeWeight');
    print('총 몸무게 : $weight');
    print('===================');
  }
}

void switchbasic16() {
  // switch 구문
// switch (변수) {
//   case 값1:
//     실행문1
//     break;
//     case 값2:
//     실행문2
//     break;
//   default:
// }

  int num = 5;
  switch (num) {
    case 2:
      print('2');
      break;
    case 3:
      print('3');
      break;
    case 4:
      print('4');
      break;
    default:
      print('값은 $num 입니다');
  }
  print('=============');
  int num2 = 58;
  switch (num2 % 5) {
    case 2:
      print('2');
      break;
    case 3:
      print('3');
      break;
    case 4:
      print('4');
      break;
    default:
      print('값은 $num2 입니다');
  }
}

void elseIFbasic15() {
// if문 다중 else if
  int number = 52;
  if (number % 5 == 0) {
    print('$number는 5의 배수 입니다.');
  } else if (number % 4 == 0) {
    print('$number는 4의 배수 입니다.');
  } else if (number % 3 == 0) {
    print('$number는 3의 배수 입니다.');
  } else {
    print('$number은 5,4,3의 배수가 아닙니다.');
  }
}

void IFbasic14() {
  // 조건문
//if 만약에 ~ 라면
//   if (조건문) {
//     실행문;
//    }
  // if 조건이 무조건 true일때
  print('start1');
  if (true) {
    print('true1');
  }
  print('end1');
  print('============');
// if 조건이 무조건 flase일때
  print('start2');
  if (false) {
    print('true2');
  }
  print('end2');
  print('============');
  print('start3');
  int number = 42;
  // if-else 문 작성
  if (number % 2 == 0) {
    print(' $number 값은 2의 배수 입니다.');
  } else {
    print(' $number 값은 2의 배수가 아닙니다.');
  }
  print('end3');
}

void FinalConstbasic13() {
  // final 상수 : 변하지 않는 데이터 (run-time) - 실행할때 값을 할당
  //const 상수 :  변하지 않는 데이터 (complie) -  컴파일 할때 값을 할당
  const String name = 'name';
  print(name);

  final DateTime now1 = DateTime.now();
  print(now1);

  Future.delayed(Duration(seconds: 2), () {
    final DateTime now2 = DateTime.now();
    print('---------------');
    print(now1);
    print(now2);
  });
}

void nullbasic12() {
// null 값 변수 선언
  String? name; // null 값일 경우 변수타입? 로 이용하여 null 선언
  print(name);
}

void vartypebasic11() {
  //var = 타입 추론가능한 타입
  // 타입 추론이 아닌 타입을 명시하는 것을 권장
  String name = 'te';
  int year = 1984;
  name = '';
  name = 'sa';
  name = 'ee';
  //dynamic은 여러 타입을 받을 수 있는 변수 타입
  dynamic varTest = 'ewe';
  varTest = 3;
}

void mapbasic10OP() {
  Map<String, dynamic> joinInputForm = {
    'name': 'Tae',
    'age': 3,
    'height': 10.5,
    'phone': '010-6556',
  };
// 키 목록 및 각 기능 들
  print(joinInputForm);
  print(joinInputForm.keys.toList());
  print('joinInputForm.keys.toList() = ${joinInputForm.keys.toList()}');
  print(joinInputForm.values.toList());
  print(joinInputForm.keys.toSet());

  print('------------');
// 키값이 있는지 유무에 따른 참, 거짓 .containsKey(키값)을 사용
  print(joinInputForm.containsKey('name'));
  print(joinInputForm.containsKey('tae'));
  print(joinInputForm.containsValue('name'));
  print(joinInputForm.containsValue(3));

  print('------------');

  joinInputForm.clear(); //모든 요소를 지운다
  print(joinInputForm);
}

void mapCUDbasic8() {
  // map add 방법
  Map map = {};
  print(map);

//키 값 할당
//키값 없다? = 선언 insert

  map['name'] = 'Taehoon';
  map['age'] = 23;
  print(map);
  print(map['name']);

//키값 있다? = update
  map['name'] = '민지';
  print(map);
  print(map['name']);

// delete
  map.remove('name');
  print(map);
}

void mapbasic7() {
  //MAP : key, value pair(한쌍) 이뤄진 자료 구조
// map 선언방법
// 1. key값이 중복되면 안됩니다.
  Map<String, dynamic> joinInputForm = {
    // Map<key, value 타입> 변수명 ={ key:value ,key:value ,key:value ,};
    'name': 'Tae',
    'age': 3,
    'height': 10.5,
    'bool': true,
    'list': [true, true, true],
    'phone': '010-6556',
  }; // 중괄호로 선언
  // get[key] 를 입력하여 벨류값을 가져올 수 있다.
  print(joinInputForm['name']);
  print(joinInputForm['age']);
  print(joinInputForm['bool']);
  print(joinInputForm['list']);
}

void listbasic7() {
// list 계속
  List<String> list = [];
  list.add('a');
  print(list);

  list.addAll(['a', 'b', 'cd']);
  print(list);
  print(list.length);
  print(list.contains('a')); // contains 는 포함 여부를 확인할 수 있는 연산자
  print(list.contains('4'));
  print(list.contains('b'));

  print(list.last); // list의 마지막 값을 을 확인하는 연산자 .last
  print(list.first); // list의 처음 값을 을 확인하는 연산자 .first

  print('---------------');
  // index 기반으로 값을 수정할 때 list[0] 대괄호
  list[0] = '가';
  list[1] = '나';
  list[2] = '다';
  list[3] = '라';
  print(list);
  print('================');
// 삭제
  list.remove('나'); // 해당 문자열 삭제할때 .remove('문자') 소괄호
  print(list);
  list.removeAt(0); // 해당 index[0] 번째 값을 삭제할때 .removeAt(1)
  print(list);
}

void setbasic6() {
  //set 선언 방법
  Set<String> set = {};
  set.add('a');
  set.add('b');
  set.add('c');
  set.add('d');
  set.add('a');
  print(set);
  print(set.length);

  // set은 순서보장이 안되는 열거 타입이다.
  // 인덱스 접근이 안되다. set[2] 안됨
  // print(set[2]);
// 특징 1. 순서 보장 안되는 열거 타입이다.
// 특징 2. 중복 허용하지 않는다.
// 특징 3. 접근처리 속도가 빠르다. list 보다
  print(set);
  print(set.length);
}

void listbasic5() {
// list
  List list = []; // 빈 리스트

  print(list);
  print(list.length);
// list는 순수가 보장된다.
  list.add('a'); //리스트에 값 추가할때 .add를 사용
  list.add('b');
  list.add('c');
  list.add('d');
  list.add('e');
  list.add('1');
  print(list);
  print(list.length); // 리스트의 길이를 알고 싶을때

//만약 리스트에 받는 타입을 지정해줄 때
  List<String> Stringlist = <String>[]; //  리스트 안의 값들을 String타입으로 제한

  Stringlist.add('abb');
  print(Stringlist);

// List 안의 값을 get(index 기반)
// Index를 접근할 때는 0번부터 시작한다.
  print(list[0]);
  print(list[1]);
}

void basic2() {
  // 2. 변수 타입
// 문자열 값 = String
  String name = 'taeboon';
  String nickname = 'steve';

  print('name = $name');
  print('name == ' + name);
  print('nickname = $nickname');

  // 숫자값 = 정수(int), 실수 (double, 소수점 0)
  int age = 27;
  double hight = 180.5;
  print(age);
  print(hight);

  print('-----');
// 값 변경
// 변수명 = 변경될 값 ;
  age = age + 2;
  print(age);
  hight = age + 1.2;
  print(hight);
  int n1 = 15;
  int n2 = 5;
  print(n1 + n2);
  print(n1 - n2);
  print(n1 / n2);
  print(n1 * n2);
  print(n1 % n2);

// bloolean 값 (참/거짓)
  bool isshow = false;
  print('isshow = $isshow');

  bool istrue = 4 > 10;
  print('istrue = 4 > 10 => $istrue');

  bool istrue1 = 4 == 10;
  print('istrue = 4 = 10 => $istrue1');

  bool istrue2 = 4 < 10;
  print('istrue = 4 < 10 => $istrue2');

  bool istrue3 = ((4 == 4.0) && (2 == 2.0)); //AND 둘다 참일 경우에만 결과는 참
  print('(4 == 4.0) && (2==2.0) => $istrue3');

  bool istrue5 = ((4 == 4.0) && (2 == 2.8)); //AND 둘다 참일 경우에만 결과는 참
  print('(4 == 4.0) && (2 == 2.8) => $istrue5');

  bool istrue4 = ((4 == 4.0) || (2 == 2.2)); //OR 둘 중 하나만 참이어도 참!
  print('(4 == 4.0) || (2 == 2.2) => $istrue4');
}

void basic1() {
  // 변수
// 1.선언볍
// 변수 규칙1. 기존 선언되었던 이름으로 중복해서 선언할 수 없다.
// 변수 규칙2. 변수명은 소문자로 시작, 띄어쓰기가 안된다. 필요시 카멜표기법으로
// var(변수타입) 변수명 = 값;
  var name = 'Voyager I'; // 문자열
  var year = 1977; // 정수 int
  var antennaDiameter = 3.7; // 실수
  var flybyObjects = [
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune'
  ]; // 대괄호는 문자열이 담긴 list 값
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  }; //Map 값(형태)

  print(name);
  print(image);
}
