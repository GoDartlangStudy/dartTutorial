/// Creating Custom Libraries
///

library sample_lib;
import 'dart:math';

//import statement after the libaray statement
int add(int firstNumber,int secondNumber){
  print("inside add method of Calculator Library ") ;
  return firstNumber+secondNumber;
}
int modulus(int firstNumber,int secondNumber){
  print("inside modulus method of Calculator Library ") ;
  return firstNumber%secondNumber;
}
int random(int no){
  return new Random().nextInt(no);
}

void _log(msg) {
  print("Log method called in loggerlib msg:$msg");
}

