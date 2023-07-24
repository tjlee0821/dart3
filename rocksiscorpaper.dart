import 'dart:convert';
import 'dart:io';
import 'dart:math';

// 터미널에서 시켜야 한다fast
void main() {
  ////1. 유저에게 어떤것을 낼것인지
  ////2. 컴퓨터가 낼 타입이 어떤것인지
  ////3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산할 함수

  print('rock, sicsor, paper 중 하나를 정해서 입력해주세요');
  //String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error'; // standard input
  //String? userInput = stdin.readLineSync(encoding: utf8); // standard input
  final String userInput =
      stdin.readLineSync(encoding: utf8) ?? 'Error'; // standard input
  print(userInput);

  const selectList = ['rock', 'sicsor', 'paper'];

  final cpuInput = selectList[Random().nextInt(3)];

  print(cpuInput);

  print(getResult(userInput, cpuInput));
}

String getResult(String userInput, String cpuInput) {
  String result = '';
  String usrWin = 'User Win';
  String cpuWin = 'Cpu Win';
  String noWin = 'Draw';
  
  switch (userInput) {
    case 'rock':
      if (cpuInput == 'rock') {
        result = noWin;
      } else if (cpuInput == 'sicsor') {
        result = usrWin;
      } else {
        result = cpuWin;
      }
    case 'sicsor':
      if (cpuInput == 'rock') {
        result = cpuWin;
      } else if (cpuInput == 'sicsor') {
        result = noWin;
      } else {
        result = usrWin;
      }
    case 'paper':
      if (cpuInput == 'rock') {
        result = usrWin;
      } else if (cpuInput == 'sicsor') {
        result = cpuWin;
      } else {
        result = noWin;
      }
  }
  return result;
}
