void main(){

  // 비동기 : 코드가 동시 다발적으로 실해오디서, 순차적으로 보장할 수 없는 형태

  /// async / await / Future : 1회만 응답을 돌려받는 경우
  /// 
  /// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
  /// 
  /// 
  Future<void> todo(int second) async {
    await Future.delayed(Duration(seconds: second));
    print("TODO Done in $second seconds");
  }

  todo(3);
  todo(1);
  todo(5);
  
  
}