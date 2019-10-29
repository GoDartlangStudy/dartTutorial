void main(){

  //int
  var x = 1;
  var hex = 0xDEADBEEF;

  //double
  var y = 1.1;
  var exponents = 1.42e5;

  //datrt 2.1부터 1.0 이 아닌 1로도 생성 가능
 double z = 1;
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  //The int type specifies the traditional bitwise shift (<<, >>), AND (&), and OR (|) operators. For example:
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}
