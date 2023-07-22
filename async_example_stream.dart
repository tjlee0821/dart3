void main() {
  Stream<int> todo() async* {
    int counter = 0;

    while (counter < 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print("Todo is Running $counter");
      yield counter; //
    }

    print("Todo is done");
  }

  todo().listen((event){});
}
