///Synchronous generator: Returns an Iterable object.
///Asynchronous generator: Returns a Stream object.

/// yield는 값을 전달하는 역할

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

Future main() async {
//  var a = naturalsTo(100);
//  a.forEach((value) {
//    print(value);
//  });


  await for (var value in asynchronousNaturalsTo(100)) {
    print(value);
  }

}
