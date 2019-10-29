void main() {
  var callbacks = [];

  // for
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  // forEach
  callbacks.forEach((c) => c());

  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

  // for in
  for (var x in collection) {
    print(x); // 0 1 2
  }

}