void main() {
  Map<String, String> map = {
    'k1': '2',
    'k2': '2',
    'k3': '4',
    'k5': '2',
    'y6': '2',
    'e7': 'asefwaf',
  };
  print(map);
  map.addAll({'k12': '11', 'tae': '231'});
  print(map);
  map['k1'] = '111';
  map['k30'] = '111';
  print(map);
  print(map.length);
  print(map.keys.toList());
  map.remove('k2');
  print(map);
  map.removeWhere((key, value) => key.contains('k')); // k가 포함된 부분 삭제
  print(map);
// toUpperCase() 는 소문자를 대문자료 변경
  map.update('e7', (value) => value.toUpperCase());
  print(map);
}
