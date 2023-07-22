void main(){
  int num1 = 10;
  double quoti = 0;
  try{
    quoti = num1/0;
    print(quoti);
    print(10 ~/ 0);
  }catch(e){
    print(e);
    print("Error Occurs");
  }
}