
//import 'lib/sample_lib.dart' as hello;
///충돌하는 식별자를 가진 두 개의 라이브러리를 가져 오는 경우 하나 또는 두 라이브러리의 접두사를 지정할 수 있음,
/// 접두사를 지정하려면 'as'키워드를 사용하십시오.
/// hello. add(num1,num2)

import 'lib/sample_lib.dart';

void main() {
  var num1 = 10;
  var num2 = 20;
  var sum = add(num1,num2);
  var mod = modulus(num1,num2);
  var r = random(10);

  /// libary의 _log()를 사용 하려고 하면 에러가 남 ( private, encapsulation)

  print("$num1 + $num2 = $sum");
  print("$num1 % $num2= $mod");
  print("random no $r");
}
