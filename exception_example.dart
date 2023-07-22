void main() {
  int num1 = 10;
  double quoti = 0;
  try {
    quoti = num1 / 0;
    print(quoti);
    print(10 ~/ 0);
  } catch (e) {
    print(e);
    print("Error Occurs ~~~~!!!!");
  } finally {
    /// 예외가 발생 했던, 하지 않았던, try 문/ catch 문 이후에 실행하고자 하는 코드 
    /// 
    print ("예외처리 문이 지나쳤습니다");
  }

  try{
   // print(10 ~/ 0);
    throw Exception( 'Unknown Error!!!!');
  }
  on IntegerDivisionByZeroException catch(e, s){
    print(e);
    print(s);
  }
  on TypeError catch(e, s){
    print("TypeError Null 값이 참조되었씁니다.");
    print(s);
  } catch (e,s){
    print('모르는 에러가 감지되었습니다.');
    print(s);
    rethrow;
  }

}
