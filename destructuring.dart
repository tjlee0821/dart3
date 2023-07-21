void main() {
  final minJi = ('민지', 20);
  print(minJi.$1);
  // 이게 귀찮다

  final (name, age) = ('민지', 20);
  print(name);
  print(age);
  //

  final newJeans = ['민지', '혜린'];

  final [a, b] = newJeans;

  print(a);
  print(b);

  // 이렇게 된다. 타입도 매칭이 된다.

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  final [x, y, ..., z] = numbers;

  print(z);

  // 자바스크립트에서 가져온거다

  final [xx, yy, ...rest, zz] = numbers;
  print(rest);

  // rest 가져올 수 있다
  final [xxx, _, yyy, ...rest2, zzz, _] = numbers; //ignore

  print(yyy);
  print(zzz);

  // Map Destrution //

  final minJiMap = {'name': '민지', 'age': 19};
  final {'name': name3, 'age': age3} = minJiMap;
  print(name3);
  print(age3);

  final miJiIdol = Idol(name: '민지class', age: 20);

  final Idol(name: name4, age: age4) = miJiIdol;

  print(name4);
  print(age4);
}

class Idol {
  final String name;
  final int age;

  Idol({required this.name, required this.age});
}
