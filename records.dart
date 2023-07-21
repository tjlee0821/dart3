void main() {
  final result = nameAndAge({
    'name': '태룡',
    'age': 20,
  });
  print(result.$1);
  print(result.$2);
  print("-------------");
  print(getNewJeans());
  print("-------------");
  print("------3.0-------");
  final result3 = getNewJeansWithType();
  for (final item in result3) {
    print(item.$1);
    print(item.$2);
  }
  print("------3.0-------");

  final result4 = getNewJeansWithType2();
  for (final item in result4) {
    print(item.$1);
//     print(item.age);
  }

  final result5 = getNewJeansWithType3();
  for (final item in result5) {
    print(item.name);
    print(item.age);
  }
  print("------3.0-------");
}

// Record
(String, int) nameAndAge(Map<String, dynamic> json) {
  //return [json['name'], json['age']];
  return (json['name'] as String, json['age'] as int);
}

List<Map<String, dynamic>> getNewJeans() {
  return [
    {
      'name': '태룡',
      'age': 20,
    },
    {
      'name': '태룡',
      'age': 22,
    },
  ];
}

List<(String, int)> getNewJeansWithType() {
  return [
    (
      '태룡1',
      20,
    ),
    (
      '태룡2',
      22,
    ),
  ];
}

List<(String name, int age)> getNewJeansWithType2() {
  return [
    (
      '태룡3',
      20,
    ),
    (
      '태룡4',
      22,
    ),
  ];
}

List<({String name, int age})> getNewJeansWithType3() {
  return [
    (
      name: '태룡5',
      age: 20,
    ),
    (
      name: '태룡6',
      age: 22,
    ),
  ];
}

(String name, String group, int age) getMinji() {
  return ('민지', '뉴진스', 19);
}
