void main() {
  // Validation

  final minJi = ('민지', 20);

  final (name as String, age as int) = minJi;

  print(name);
  print(age);

  switcher('aaa');
  switcher('bbb');
  switcher(['1', '2']);
  switcher([1, 2]);
  switcher([1, 2, 6]);
  switcher([5, 7]);
  switcher([3, "a"]);
}

void switcher(dynamic anything) {
  switch (anything) {
    case 'aaa':
      print('match:aaa');
    case ['1', '2']:
      print("match: ['1','2']");
    case [1, 2]:
      print("match: [1,2]");
    case [_, _, _]:
      print("match [_,_,_]");
    case [int a, int b]:
      print("match [int $a, int $b]");
    default:
      print('no match');
  }
}
