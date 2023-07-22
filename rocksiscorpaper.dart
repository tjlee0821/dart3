import 'dart:convert';
import 'dart:io';

void main(){

  ////1. 유저에게 어떤것을 낼것인지
  ////2. 컴퓨터가 낼 타입이 어떤것인지
  ////3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산할 함수

  print('가위 바위 보 중 하나를 정해서 입력해주세요');
  //String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error'; // standard input
  //String? userInput = stdin.readLineSync(encoding: utf8); // standard input
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error'; // standard input
  print(userInput);
}