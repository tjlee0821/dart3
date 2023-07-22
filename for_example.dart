void main(){
  List<int> indexes= [0,1,2,3,4,5,6,];

  for (final index in indexes){
//    print("running form indexes $index");
  }

  bool isRunning = true;
  int count = 0;
  while (isRunning){
    if (count >=5) {isRunning = false; break;}
    count ++;
    //print("while is Running");
  }

  int num = 0;
  do {
      num ++;

      if(num == 4){
        continue;
      }
      print("Do while is Running $num");
  } while ( num < 10 );

}