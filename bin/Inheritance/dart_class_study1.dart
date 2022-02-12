import 'person.dart';

void main() {
  Person mon = Person(name: '엄마');
  mon.speak();
  mon.walk();
  print('=====================');
  Hero child = Hero('자식');
  child.speak();
  child.walk();
  child.fly();

  Person child2 = Hero('자식2');
  print('==============');
  child2.speak();
  child2.walk();
  print('==============');

  speakerNaver(child2);
  speakerNaver(mon);
  speakerNaver(child);
}

void speakerNaver(Person person) {
  print('이름은: ${person.name}');
}
