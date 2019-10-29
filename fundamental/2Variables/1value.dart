void main(){
  var name = 'Bob';
  dynamic dyname = 'cat';
  print(name);
  print(dyname);

  int lineCount;
  assert(lineCount == null);



  /////
  final name1 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';


  // Valid compile-time constants as of Dart 2.5.
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: "int"}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}

